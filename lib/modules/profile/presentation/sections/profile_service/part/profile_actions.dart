import 'package:flutter/cupertino.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/widgets/profile_action_item.dart';

class ProfileActions extends StatelessWidget {
  const ProfileActions({Key? key}) : super(key: key);

  Widget box() {
    return Container();
  }

  @override
  Widget build(BuildContext context) => Container(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProfileActionItem(
                    onTap: () {},
                    title: 'Get directions',
                    icon: AppIcons.place),
                SizedBox(
                  width: 8,
                ),
                ProfileActionItem(
                    onTap: () {}, title: 'Call now', icon: AppIcons.phone),
                SizedBox(
                  width: 8,
                ),
                ProfileActionItem(
                    onTap: () {}, title: 'Website', icon: AppIcons.place),
                SizedBox(
                  width: 8,
                ),
                ProfileActionItem(
                    onTap: () {}, title: 'Bookmark', icon: AppIcons.place),
              ],
            )),
      );
}
