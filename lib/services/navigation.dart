import 'package:flutter/material.dart';

import '../constants/routes.dart';

class Navigation {
  Navigation(this.context);

  BuildContext context;

  goToLoginScreen() {
    Navigator.pushNamed(context, Routes.loginscreen);
  }

  goToHomeScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.homescreen, (route) => false);
  }

  goToRegisterScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.registerscreen, (route) => false);
  }

  goToAnnouncementScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.announcementscreen, (route) => false);
  }

  goToAddAnnouncementScreen() {
    Navigator.of(context).pushNamed(Routes.addannouncementscreen);
  }

  goToTeamScreen() {
    Navigator.of(context).pushNamed(Routes.teamscreen);
  }

  goToAddTeamScreen() {
    Navigator.of(context).pushNamed(Routes.addteamscreen);
  }

  goToAboutScreen() {
    Navigator.of(context).pushNamed(Routes.aboutscreen);
  }

  goToFreedomPostsScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.freedompostsscreen, (route) => false);
  }

  goToAddFreedomPostsScreen() {
    Navigator.of(context).pushNamed(Routes.addfreedompostscreen);
  }

  goToCatalogEntriesScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.catalogentriesscreen, (route) => false);
  }

  goToSourceCodeScreen() {
    Navigator.of(context).pushNamed(Routes.sourcecodescreen);
  }

  goToEventCalendarScreen() {
    Navigator.of(context).pushNamed(Routes.eventcalendarscreen);
  }

  goToUserSearchScreen() {
    Navigator.of(context).pushNamed(Routes.usersearchscreen);
  }

  goToPiechartReportScreen() {
    Navigator.of(context).pushNamed(Routes.piechartreportscreen);
  }

  goToPiechartSearchScreen() {
    Navigator.of(context).pushNamed(Routes.piechartsearchscreen);
  }

  goToAddCatalogEntryScreen() {
    Navigator.of(context).pushNamed(Routes.addcatalogentryscreen);
  }

  goToRewardHomeScreen() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.rewardhomescreen, (route) => false);
  }

  goToRewardViewItemScreen() {
    Navigator.of(context).pushNamed(Routes.rewardviewitemscreen);
  }

  goToProfileScreenReward() {
    Navigator.of(context).pushNamed(Routes.profilescreenreward);
  }

  goToAdminPanelScreenReward() {
    Navigator.of(context).pushNamed(Routes.adminpanelscreenreward);
  }

  goToAdminPostsDataScreen() {
    Navigator.of(context).pushNamed(Routes.adminpostsdatascreen);
  }

  goToUserSingleFreedomPostScreen() {
    Navigator.of(context).pushNamed(Routes.usersinglefreedompostscreen);
  }

  goToUserContributionsScreen() {
    Navigator.of(context).pushNamed(Routes.usercontributionsscreen);
  }

  goToEditCatalogEntryScreen() {
    Navigator.of(context).pushNamed(Routes.editcatalogentryscreen);
  }
}
