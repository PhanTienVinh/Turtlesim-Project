#include "ros/ros.h"
#include "std_msgs/String.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Pose2D.h"
#include "turtlesim/Pose.h"
#include "turtlesim/TeleportAbsolute.h"
#include "std_srvs/Empty.h"
#include "letsgooo/TargetPosition.h"
#include <iostream>

class controller
{
    public:
    controller()
    {
        pub_cmd_vel_ = nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel", 1000);
        sub_pose_ = nh.subscribe("/turtle1/pose", 1000, &controller::callback, this);
        client_pose_ = nh.serviceClient<turtlesim::TeleportAbsolute>("/turtle1/teleport_absolute");
        client_clear_ = nh.serviceClient<std_srvs::Empty>("/clear");
        client_target_pose = nh.serviceClient<letsgooo::TargetPosition>("/go_to_position");
    }

    double getDistance()
    {
        return(sqrt(pow(target_position.request.target_x - current_pose.x,2)+ pow(target_position.request.target_y - current_pose.y,2 )));
    }
    double distance = getDistance();

    void callback(const turtlesim::Pose::ConstPtr &pos)
    {
        current_pose.x = pos->x;
        current_pose.y = pos->y;
        current_pose.theta = pos->theta;

        // teleport_pose.request.x = 0.0;
        // teleport_pose.request.y = 0.0;
        // teleport_pose.request.theta = 0.0;

        target_position.request.target_x = 9.0;
        target_position.request.target_y = 4.0;
        target_position.request.target_theta = 0.0;

        if(client_target_pose.call(target_position))
        {
            ROS_INFO("Service called");
            std::cout << "current position is" << current_pose.theta << std::endl;
            
            float threshold = 0.05;
            float diff = current_pose.theta - target_position.response.angular_z;
            float diff_theta = current_pose.theta - target_position.request.target_theta;
            double distance = getDistance(); 
            std::cout << "The diff is" << diff << std::endl;
                                                                              
            if(std::abs(diff)>threshold)
            {
                cmd.linear.x = 0.0;
                cmd.angular.z = 1.0;
                std::cout << "Spinning" << std::endl;

                if((std::abs(diff_theta)<threshold) and (distance<threshold))
                {
                    cmd.linear.x = 0.0;
                    cmd.angular.z = 0.0;
                    ROS_INFO("Position reach!");
                }

            } 
            else
            {
                std::cout << "Stop spinning" << std::endl;
                cmd.linear.x = target_position.response.linear_x;
                cmd.angular.z = 0.0;
        
            }
        }
        pub_cmd_vel_.publish(cmd);

    }

    private:
    ros::NodeHandle nh;
    ros::Publisher pub_cmd_vel_;
    ros::Subscriber sub_pose_;
    geometry_msgs::Pose2D current_pose;
    turtlesim::Pose pose;
    geometry_msgs::Twist cmd;
    ros::ServiceClient client_pose_;
    ros::ServiceClient client_clear_;
    turtlesim::TeleportAbsolute teleport_pose;
    
    ros::ServiceClient client_target_pose;

    letsgooo::TargetPosition target_position; 

};

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pathway");
    controller control;
    ros::spin();
    return 0;

}