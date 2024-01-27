import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoremIpsumWidget extends StatelessWidget {
  LoremIpsumWidget({super.key, this.name});
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: Text(
            'AlKareem ${name}',
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquet sollicitudin ligula id sodales. Etiam tempus molestie dictum. Vestibulum maximus ligula ut suscipit lacinia. Praesent malesuada magna et lorem vulputate, consequat feugiat eros porta. Mauris commodo magna eget ornare elementum.\n\n Nunc ultricies ut enim in suscipit. Vestibulum sodales at elit eget laoreet. Maecenas maximus pellentesque sapien ut posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et auctor neque. Proin consectetur feugiat pellentesque. Vestibulum molestie mauris vitae tellus aliquam, a molestie sapien vulputate. Integer consequat, lectus tempor iaculis dapibus, neque lectus efficitur eros, et porttitor urna libero in enim. Aenean fringilla iaculis interdum. Donec feugiat leo vitae risus lacinia mollis.Phasellus porttitor dictum enim, eu aliquam odio feugiat nec. Aenean eu euismod sem, in aliquam dolor. Pellentesque vulputate velit est, sit amet rhoncus purus porttitor eget. Praesent faucibus consectetur leo, et sollicitudin risus tempor efficitur. Morbi maximus facilisis nulla placerat mattis. Sed cursus justo a rhoncus congue. Fusce tincidunt aliquet sapien, eget vehicula justo tincidunt eu. Nunc ut tincidunt lacus. Pellentesque lacinia nisl ante, ac maximus orci hendrerit sit amet. Praesent accumsan suscipit tortor, non laoreet erat mattis sed. Quisque auctor lorem dolor.\n\nProin vel ligula elementum, aliquet purus ut, dignissim mi. Nam a eros sed velit tincidunt maximus et sed lorem. Donec elementum ornare lorem, at viverra erat finibus ac. Fusce tincidunt odio volutpat, rutrum risus a, consectetur eros. Curabitur vehicula interdum mollis. Vestibulum dapibus mauris nec metus mollis, vel hendrerit velit interdum. Duis accumsan est ante, ut mollis dolor placerat vitae. Suspendisse tincidunt volutpat sem non euismod. Phasellus mi dolor, molestie a massa in, fermentum elementum enim. Nulla sed ultrices lorem. Maecenas lacinia commodo mi, et porttitor sapien tincidunt ac. Maecenas at vulputate tellus. Praesent egestas, ligula non tempus luctus, ligula augue iaculis sem, a auctor tellus ipsum nec nunc. Nunc molestie elementum erat vel condimentum.\n\nFusce purus massa, vestibulum vel nisl vel, vestibulum maximus nunc. Suspendisse fringilla lorem a mattis tempus. Ut mattis ac odio non elementum. Praesent quis orci vitae orci laoreet malesuada. Praesent luctus augue lorem, ac ultricies urna tempor eu. Donec ac tempus lacus. Pellentesque nisl mi, aliquam ac mauris nec, porttitor tincidunt eros. Integer eget est id odio varius ultricies. Suspendisse potenti. Maecenas interdum quam ut neque varius viverra. In dapibus nisi eu hendrerit tincidunt. Nunc quis nisl iaculis, efficitur augue sed, interdum purus.\n\nInteger ut ipsum sollicitudin, venenatis neque sit amet, finibus eros. Praesent euismod, risus pulvinar malesuada lacinia, magna ligula faucibus orci, sed viverra justo tortor in massa. Nunc diam mauris, ornare sed porttitor in, suscipit non massa. Vivamus eget enim at neque cursus lacinia tempor in nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus nec ligula id massa fermentum hendrerit. Integer mi sapien, suscipit eu libero eu, laoreet vehicula turpis. Morbi gravida turpis aliquam, pharetra nibh lobortis, lacinia diam.',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: Text(
            'AlKareem \nSector (PHASE-1)',
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquet sollicitudin ligula id sodales. Etiam tempus molestie dictum. Vestibulum maximus ligula ut suscipit lacinia. Praesent malesuada magna et lorem vulputate, consequat feugiat eros porta. Mauris commodo magna eget ornare elementum.\n\n Nunc ultricies ut enim in suscipit. Vestibulum sodales at elit eget laoreet. Maecenas maximus pellentesque sapien ut posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et auctor neque. Proin consectetur feugiat pellentesque. Vestibulum molestie mauris vitae tellus aliquam, a molestie sapien vulputate. Integer consequat, lectus tempor iaculis dapibus, neque lectus efficitur eros, et porttitor urna libero in enim. Aenean fringilla iaculis interdum. Donec feugiat leo vitae risus lacinia mollis.Phasellus porttitor dictum enim, eu aliquam odio feugiat nec. Aenean eu euismod sem, in aliquam dolor. Pellentesque vulputate velit est, sit amet rhoncus purus porttitor eget. Praesent faucibus consectetur leo, et sollicitudin risus tempor efficitur. Morbi maximus facilisis nulla placerat mattis. Sed cursus justo a rhoncus congue. Fusce tincidunt aliquet sapien, eget vehicula justo tincidunt eu. Nunc ut tincidunt lacus. Pellentesque lacinia nisl ante, ac maximus orci hendrerit sit amet. Praesent accumsan suscipit tortor, non laoreet erat mattis sed. Quisque auctor lorem dolor.\n\nProin vel ligula elementum, aliquet purus ut, dignissim mi. Nam a eros sed velit tincidunt maximus et sed lorem. Donec elementum ornare lorem, at viverra erat finibus ac. Fusce tincidunt odio volutpat, rutrum risus a, consectetur eros. Curabitur vehicula interdum mollis. Vestibulum dapibus mauris nec metus mollis, vel hendrerit velit interdum. Duis accumsan est ante, ut mollis dolor placerat vitae. Suspendisse tincidunt volutpat sem non euismod. Phasellus mi dolor, molestie a massa in, fermentum elementum enim. Nulla sed ultrices lorem. Maecenas lacinia commodo mi, et porttitor sapien tincidunt ac. Maecenas at vulputate tellus. Praesent egestas, ligula non tempus luctus, ligula augue iaculis sem, a auctor tellus ipsum nec nunc. Nunc molestie elementum erat vel condimentum.\n\nFusce purus massa, vestibulum vel nisl vel, vestibulum maximus nunc. Suspendisse fringilla lorem a mattis tempus. Ut mattis ac odio non elementum. Praesent quis orci vitae orci laoreet malesuada. Praesent luctus augue lorem, ac ultricies urna tempor eu. Donec ac tempus lacus. Pellentesque nisl mi, aliquam ac mauris nec, porttitor tincidunt eros. Integer eget est id odio varius ultricies. Suspendisse potenti. Maecenas interdum quam ut neque varius viverra. In dapibus nisi eu hendrerit tincidunt. Nunc quis nisl iaculis, efficitur augue sed, interdum purus.\n\nInteger ut ipsum sollicitudin, venenatis neque sit amet, finibus eros. Praesent euismod, risus pulvinar malesuada lacinia, magna ligula faucibus orci, sed viverra justo tortor in massa. Nunc diam mauris, ornare sed porttitor in, suscipit non massa. Vivamus eget enim at neque cursus lacinia tempor in nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus nec ligula id massa fermentum hendrerit. Integer mi sapien, suscipit eu libero eu, laoreet vehicula turpis. Morbi gravida turpis aliquam, pharetra nibh lobortis, lacinia diam.',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: Text(
            '${name} Facilities',
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          '1. Sports',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '2. Guest Room',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '3. Resturants',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '4. Library',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '5. Community Halls',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: Text(
            'AlKareem \nSector (PHASE-2)',
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse aliquet sollicitudin ligula id sodales. Etiam tempus molestie dictum. Vestibulum maximus ligula ut suscipit lacinia. Praesent malesuada magna et lorem vulputate, consequat feugiat eros porta. Mauris commodo magna eget ornare elementum.\n\n Nunc ultricies ut enim in suscipit. Vestibulum sodales at elit eget laoreet. Maecenas maximus pellentesque sapien ut posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris et auctor neque. Proin consectetur feugiat pellentesque. Vestibulum molestie mauris vitae tellus aliquam, a molestie sapien vulputate. Integer consequat, lectus tempor iaculis dapibus, neque lectus efficitur eros, et porttitor urna libero in enim. Aenean fringilla iaculis interdum. Donec feugiat leo vitae risus lacinia mollis.Phasellus porttitor dictum enim, eu aliquam odio feugiat nec. Aenean eu euismod sem, in aliquam dolor. Pellentesque vulputate velit est, sit amet rhoncus purus porttitor eget. Praesent faucibus consectetur leo, et sollicitudin risus tempor efficitur. Morbi maximus facilisis nulla placerat mattis. Sed cursus justo a rhoncus congue. Fusce tincidunt aliquet sapien, eget vehicula justo tincidunt eu. Nunc ut tincidunt lacus. Pellentesque lacinia nisl ante, ac maximus orci hendrerit sit amet. Praesent accumsan suscipit tortor, non laoreet erat mattis sed. Quisque auctor lorem dolor.\n\nProin vel ligula elementum, aliquet purus ut, dignissim mi. Nam a eros sed velit tincidunt maximus et sed lorem. Donec elementum ornare lorem, at viverra erat finibus ac. Fusce tincidunt odio volutpat, rutrum risus a, consectetur eros. Curabitur vehicula interdum mollis. Vestibulum dapibus mauris nec metus mollis, vel hendrerit velit interdum. Duis accumsan est ante, ut mollis dolor placerat vitae. Suspendisse tincidunt volutpat sem non euismod. Phasellus mi dolor, molestie a massa in, fermentum elementum enim. Nulla sed ultrices lorem. Maecenas lacinia commodo mi, et porttitor sapien tincidunt ac. Maecenas at vulputate tellus. Praesent egestas, ligula non tempus luctus, ligula augue iaculis sem, a auctor tellus ipsum nec nunc. Nunc molestie elementum erat vel condimentum.\n\nFusce purus massa, vestibulum vel nisl vel, vestibulum maximus nunc. Suspendisse fringilla lorem a mattis tempus. Ut mattis ac odio non elementum. Praesent quis orci vitae orci laoreet malesuada. Praesent luctus augue lorem, ac ultricies urna tempor eu. Donec ac tempus lacus. Pellentesque nisl mi, aliquam ac mauris nec, porttitor tincidunt eros. Integer eget est id odio varius ultricies. Suspendisse potenti. Maecenas interdum quam ut neque varius viverra. In dapibus nisi eu hendrerit tincidunt. Nunc quis nisl iaculis, efficitur augue sed, interdum purus.\n\nInteger ut ipsum sollicitudin, venenatis neque sit amet, finibus eros. Praesent euismod, risus pulvinar malesuada lacinia, magna ligula faucibus orci, sed viverra justo tortor in massa. Nunc diam mauris, ornare sed porttitor in, suscipit non massa. Vivamus eget enim at neque cursus lacinia tempor in nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus nec ligula id massa fermentum hendrerit. Integer mi sapien, suscipit eu libero eu, laoreet vehicula turpis. Morbi gravida turpis aliquam, pharetra nibh lobortis, lacinia diam.',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 1.h,
          ),
          child: Text(
            '${name} Facilities',
            style: TextStyle(
                fontSize: 17.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          '1. Sports',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '2. Guest Room',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '3. Resturants',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '4. Library',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
        Text(
          '5. Community Halls',
          style: TextStyle(fontSize: 10.sp, color: Colors.black),
        ),
      ],
    );
  }
}
