import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

  @override
  Widget build(BuildContext context) {
    /*Row - строка карточки
    * InkWell - позволяет сделать клик или еще что то
    * */
    return SizedBox(
      height: height64,
      child: Card(
        color: SurfaceColor,
        elevation: el006,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bdr8),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(bdr8),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: pad8, right: pad16),
            child: Row(children: <Widget>[MotorcycleImage, _title(), _state()]),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    /*Columns
    * RichText - составной текст с разными стилями
    * Expanded - растягивает блок по всей ширине
    * */
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: pad6, right: pad6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //выравнивание текста
          // справа
          mainAxisAlignment: MainAxisAlignment.center, //по центру по вертикали
          children: <Widget>[
            const Text(
              'BMW GS-7638',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: secondaryColor,
                fontSize: fontSize14,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (false)
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'No driver',
                style: TextStyle(
                  color: secondaryVariantColor,
                  fontSize: fontSize14,
                  fontWeight: FontWeight.w400,
                ),
              )
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  style: TextStyle(fontSize: fontSize14),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Driver: ",
                      style: TextStyle(
                        color: secondaryVariantColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "Paul",
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          PickupImage,
          const Text(
            "Pickup",
            style: TextStyle(
              color: secondaryVariantColor,
              fontSize: fontSize12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
