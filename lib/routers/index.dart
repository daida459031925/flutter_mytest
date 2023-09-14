import 'package:flutter/material.dart';
// 引入模块页面
import '../views/List/container.dart';
import '../views/List/row.dart';
import '../views/List/column.dart';
import '../views/List/image.dart';
import '../views/List/text.dart';
import '../views/List/icon.dart';
import '../views/List/raisedButton.dart';
import '../views/List/scaffold.dart';
import '../views/List/appbar.dart';
import '../views/List/flutterLogo.dart';
import '../views/List/placeholder.dart';
import '../views/List/bottomNavigationBar.dart';
import '../views/List/tabBar.dart';
import '../views/List/tabBarView.dart';
import '../views/List/materialApp.dart';
import '../views/List/widgetsApp.dart';
import '../views/List/drawer.dart';
import '../views/List/floatingActionButton.dart';
import '../views/List/iconButton.dart';
import '../views/List/popupMenuButton.dart';
import '../views/List/buttonBar.dart';
import '../views/List/textField.dart';
import '../views/List/checkbox.dart';
import '../views/List/radio.dart';
import '../views/List/switch.dart';
import '../views/List/slider.dart';
import '../views/List/simpleDialog.dart';
import '../views/List/bottomSheet.dart';
import '../views/List/expansionPanel.dart';
import '../views/List/snackBar.dart';
import '../views/List/chip.dart';
import '../views/List/tooltip.dart';
import '../views/List/dataTable.dart';
import '../views/List/card.dart';
import '../views/List/linearProgressIndicator.dart';
import '../views/List/listTile.dart';
import '../views/List/stepper.dart';
import '../views/List/divider.dart';
import '../views/List/cupertinoActivityIndicator.dart';
import '../views/List/cupertinoAlertDialog.dart';
import '../views/List/cupertinoButton.dart';
import '../views/List/cupertinoSlider.dart';
import '../views/List/cupertinoSwitch.dart';
import '../views/List/cupertinoFullscreenDialogTransition.dart';
import '../views/List/cupertinoNavigationBar.dart';
import '../views/List/cupertinoTabBar.dart';
import '../views/List/cupertinoPageScaffold.dart';
import '../views/List/cupertinoTabScaffold.dart';
import '../views/List/cupertinoTabView.dart';
import '../views/List/padding.dart';
import '../views/List/center.dart';
import '../views/List/align.dart';
import '../views/List/fittedBox.dart';
import '../views/List/aspectRatio.dart';
import '../views/List/constrainedBox.dart';
import '../views/List/baseline.dart';
import '../views/List/fractionallySizedBox.dart';
import '../views/List/intrinsicHeight.dart';
import '../views/List/intrinsicWidth.dart';
import '../views/List/limitedBox.dart';
import '../views/List/offstage.dart';
import '../views/List/overflowBox.dart';
import '../views/List/sizedBox.dart';
import '../views/List/sizedOverflowBox.dart';
import '../views/List/transform.dart';

class WGRouter {
  static final Map<String, WidgetBuilder> routes = {
    'listContainer': (BuildContext context) => new ListContainer(),
    'listRow': (BuildContext context) => new ListRow(),
    'listColumn': (BuildContext context) => new ListColumn(),
    'listImage': (BuildContext context) => new ListImage(),
    'listText': (BuildContext context) => new ListText(),
    'listIcon': (BuildContext context) => new ListIcon(),
    'listRaisedButton': (BuildContext context) => new ListRaisedButton(),
    'listScaffold': (BuildContext context) => new ListScaffold(),
    'listAppbar': (BuildContext context) => new ListAppbar(),
    'listFlutterLogo': (BuildContext context) => new ListFlutterLogo(),
    'listPlaceholder': (BuildContext context) => new ListPlaceholder(),
    'listBottomNavigationBar': (BuildContext context) =>
    new ListBottomNavigationBar(),
    'listTabBar': (BuildContext context) => new ListTabBar(),
    'listTabBarView': (BuildContext context) => new ListTabBarView(),
    'listMaterialApp': (BuildContext context) => new ListMaterialApp(),
    'listWidgetsApp': (BuildContext context) => new ListWidgetsApp(),
    'listDrawer': (BuildContext context) => new ListDrawer(),
    'listFloatingActionButton': (BuildContext context) =>
    new ListFloatingActionButton(),
    'listIconButton': (BuildContext context) => new ListIconButton(),
    'listPopupMenuButton': (BuildContext context) => new ListPopupMenuButton(),
    'listButtonBar': (BuildContext context) => new ListButtonBar(),
    'listTextField': (BuildContext context) => new ListTextField(),
    'listCheckbox': (BuildContext context) => new ListCheckbox(),
    'listRadio': (BuildContext context) => new ListRadio(),
    'listSwitch': (BuildContext context) => new ListSwitch(),
    'listSlider': (BuildContext context) => new ListSlider(),
    'listSimpleDialog': (BuildContext context) => new ListSimpleDialog(),
    'listBottomSheet': (BuildContext context) => new ListBottomSheet(),
    'listExpansionPanel': (BuildContext context) => new ListExpansionPanel(),
    'listSnackBar': (BuildContext context) => new ListSnackBar(),
    'listChip': (BuildContext context) => new ListChip(),
    'listTooltip': (BuildContext context) => new ListTooltip(),
    'listDataTable': (BuildContext context) => new ListDataTable(),
    'listCard': (BuildContext context) => new ListCard(),
    'listLinearProgressIndicator': (BuildContext context) =>
    new ListLinearProgressIndicator(),
    'listListTile': (BuildContext context) => new ListListTile(),
    'listStepper': (BuildContext context) => new ListStepper(),
    'listDivider': (BuildContext context) => new ListDivider(),
    'listCupertinoActivityIndicator': (BuildContext context) =>
    new ListCupertinoActivityIndicator(),
    'listCupertinoAlertDialog': (BuildContext context) =>
    new ListCupertinoAlertDialog(),
    'listCupertinoButton': (BuildContext context) => new ListCupertinoButton(),
    'listCupertinoSlider': (BuildContext context) => new ListCupertinoSlider(),
    'listCupertinoSwitch': (BuildContext context) => new ListCupertinoSwitch(),
    'listCupertinoFullscreenDialogTransition': (BuildContext context) =>
    new ListCupertinoFullscreenDialogTransition(),
    'listCupertinoNavigationBar': (BuildContext context) =>
    new ListCupertinoNavigationBar(),
    'listCupertinoTabBar': (BuildContext context) => new ListCupertinoTabBar(),
    'listCupertinoPageScaffold': (BuildContext context) =>
    new ListCupertinoPageScaffold(),
    'listCupertinoTabScaffold': (BuildContext context) =>
    new ListCupertinoTabScaffold(),
    'listCupertinoTabView': (BuildContext context) =>
    new ListCupertinoTabView(),
    'listPadding': (BuildContext context) => new ListPadding(),
    'listCenter': (BuildContext context) => new ListCenter(),
    'listAlign': (BuildContext context) => new ListAlign(),
    'listFittedBox': (BuildContext context) => new ListFittedBox(),
    'listAspectRatio': (BuildContext context) => new ListAspectRatio(),
    'listConstrainedBox': (BuildContext context) => new ListConstrainedBox(),
    'listBaseline': (BuildContext context) => new ListBaseline(),
    'listFractionallySizedBox': (BuildContext context) =>
    new ListFractionallySizedBox(),
    'listIntrinsicHeight': (BuildContext context) => new ListIntrinsicHeight(),
    'listIntrinsicWidth': (BuildContext context) => new ListIntrinsicWidth(),
    'listLimitedBox': (BuildContext context) => new ListLimitedBox(),
    'listOffstage': (BuildContext context) => new ListOffstage(),
    'listOverflowBox': (BuildContext context) => new ListOverflowBox(),
    'listSizedBox': (BuildContext context) => new ListSizedBox(),
    'listSizedOverflowBox': (BuildContext context) =>
    new ListSizedOverflowBox(),
    'listTransform': (BuildContext context) => new ListTransform(),
  };
}
