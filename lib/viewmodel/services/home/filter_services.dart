import 'package:qhire_event/model/filter_model.dart';

class FilterServices {
  static void changeTypeFilter(
      int index, FilterModel filter, List<FilterModel> list) {
    list[index] = filter;
  }
}
