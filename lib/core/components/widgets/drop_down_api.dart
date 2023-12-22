import 'package:delivery_app/core/components/utils/package_export.dart';
import '../utils/colors.dart';
import '../utils/typography.dart';
import 'app_text.dart';

class DropdownForApi extends StatelessWidget {
  const DropdownForApi({
    super.key,
    required this.hint,
    required this.selected,
    required this.itemList,
    this.selectDrop,
    required this.selectedItem,
  });

  final String hint;
  final String selected;
  final String? selectedItem;
  final List<dynamic> itemList;
  final Function(String?)? selectDrop;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      style: AppTypography.dynamicStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
      ),
      validator: (value) => value == null ? 'field required' : null,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.0,
          ),
        ),
        border: const OutlineInputBorder(
          gapPadding: 1.0,
          borderRadius: BorderRadius.all(
            Radius.circular(0.0),
          ),
        ),
      ),
      hint: Text(
        hint,
        style: AppTypography.dynamicStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
      ),
      value: selectedItem, //controller.selectedCategory,
      onChanged: (value) {
        selectDrop!(value);
      },
      items: itemList.map((category) {
        return DropdownMenuItem<String>(
          value: category.title,
          child: Text(
            category.title,
            style: AppTypography.dynamicStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
        );
      }).toList(),
    );
  }
}

class DropdownFor extends StatelessWidget {
  const DropdownFor({
    super.key,
    required this.hint,
    // required this.selected,
    required this.itemList,
    this.selectDrop,
    required this.selectedItem,
    this.validator,
    this.fillColor,
  });

  final String hint;
  //final String selected;
  final Color? fillColor;
  final String? selectedItem;
  final List<String> itemList;
  final Function(String?)? selectDrop;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField2<String>(
        style: AppTypography.dynamicStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.black,
        ),
        validator: (value) => value == null ? 'field required' : null,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          border: const OutlineInputBorder(
            gapPadding: 1.0,
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        hint: AppText(
            text: hint,
            textAlign: TextAlign.start,
            fontSize: 20,
            color: AppColors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
        // buttonStyleData: ButtonStyleData(
        //   height: 60,
        //   padding: const EdgeInsets.only(left: 10, right: 10),
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     border: Border.all(
        //       color: AppColors.grey,
        //     ),
        //     color: AppColors.white,
        //   ),
        // ),
        // menuItemStyleData: const MenuItemStyleData(
        //   height: 40,
        //   padding: EdgeInsets.only(left: 10, right: 10),
        // ),

        value: selectedItem, //controller.selectedCategory,
        onChanged: selectDrop!,
        items: itemList.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: AppText(
                text: value,
                textAlign: TextAlign.start,
                fontSize: 20,
                color: AppColors.black,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600),
          );
        }).toList(),
      ),
    );
  }
}
