import 'package:first_flutter/desing/utils/size_utils.dart';
import 'package:first_flutter/pages/driver/driver_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../desing/widgets/accent_button.dart';
import '../../desing/dimensions.dart';

//StatefulWidget для того чтобы создать свою логику виджета, то есть нам
// нужно его пересоздавать(перерисовывать) с помощью setState
class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriverIndex; //индекс выбраного драйвера

  @override
  Widget build(BuildContext context) {
    /*Stack - порядок элементов*/
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _saveButton(context)),
      ],
    );
  }

  /*Crete two methods
  * separatorBuilder - разделител между елементами списка
  * itemBuilder - елемент списка с индексом [index]
  * itemCount - количество елементов в списке
  * */
  Widget _list(BuildContext context) {


    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: height8);
      },
      itemBuilder: (BuildContext context, int index) {
        final bool isSelected = _selectedDriverIndex == index;
        return DriverItem(isSelected: isSelected, driverName: "Paul", onTap: () {
          setState(() {
            _selectedDriverIndex = index;
          });
        });
        //Container(height: height64, color: SurfaceColor)
      },
      padding: EdgeInsets.only(
        left: pad16,
        right: pad16,
        top: pad16,
        bottom: getListBottomPadding(context),
      ),
    );
  }

  Widget _saveButton(BuildContext context) {
    /*SafeArea - помогает добавить отступы чтобы не мешало системным кнопкам*/
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: pad16, right: pad16),
        child: AccentButton(title: "Save", onTap: () {

        }),
      ),
    );
  }
}
