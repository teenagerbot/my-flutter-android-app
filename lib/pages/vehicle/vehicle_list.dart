import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/pages/vehicle/vehicle_item.dart';
import 'package:flutter/cupertino.dart';

import '../../desing/dimensions.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    /*Stack - порядок элементов*/
    return Stack(children: <Widget>[_list(), _updateButton()]);
  }

  /*Crete two methods
  * separatorBuilder - разделител между елементами списка
  * itemBuilder - елемент списка с индексом [index]
  * itemCount - количество елементов в списке
  * */
  Widget _list() {
    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        return const VehicleItem();
        //Container(height: height64, color: SurfaceColor)
      },
      padding: EdgeInsets.only(left: pad16, right: pad16, top: pad16),
    );
  }

  Widget _updateButton() {
    return Container();
  }
}
