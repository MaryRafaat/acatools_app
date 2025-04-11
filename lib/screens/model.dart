import 'package:flutter/material.dart';
import 'package:acatools_app/core/app_export.dart';

class AboutModel {}

class AppNavigatorModel {}

class CartEmptyShownFromWishlistModel {}

class CartModel {
  Rx<List<ListpinksizeMItemModel>> listpinksizeMItemList =
      Rx<List<ListpinksizeMItemModel>>([
    ListpinksizeMItemModel(
        image: ImageConstant.imgImage21.obs,
        pinksizeMOne: ImageConstant.imgFrameOnerrorcontainer.obs,
        loremipsum:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ".tr.obs,
        title: "Title".tr.obs,
        price: "Price".tr.obs),
    ListpinksizeMItemModel(
        image: ImageConstant.imgThumbsUp.obs,
        pinksizeMOne: ImageConstant.imgFrameOnerrorcontainer.obs)
  ]);
}

/// This class is used in the [listpinksize_m_item_widget] screen.

// ignore_for_file: must_be_immutable

class ListpinksizeMItemModel {
  ListpinksizeMItemModel(
      {this.image,
      this.pinksizeMOne,
      this.loremipsum,
      this.title,
      this.price,
      this.lblQuantity,
      this.id}) {
    image = image ?? Rx(ImageConstant.imgImage21);

    pinksizeMOne = pinksizeMOne ?? Rx(ImageConstant.imgFrameOnerrorcontainer);

    loremipsum = loremipsum ?? Rx("msg_small_notebook_4_3_x".tr);

    title = title ?? Rx("lbl_pink_size_m".tr);

    price = price ?? Rx("lbl_17_00".tr);

    lblQuantity = lblQuantity ?? Rx(TextEditingController());

    id = id ?? Rx("");
  }
  Rx<String>? image;

  Rx<String>? pinksizeMOne;

  Rx<String>? loremipsum;
  Rx<String>? title;
  Rx<String>? price;
  Rx<TextEditingController>? lblQuantity;
  Rx<String>? id;
}

class ChoosePaymentMethod1CardModel {}

class ChooseYourCountryMethod {}

class ChooseYourCurrencyModel {}

class ChooseYourLanguageModel {}

class couldnTProceedPaymentModel {}

class CreateAccountStudentModel {}

class DeletingAccountModel {}

class DiscoverModel {}

class EditCardModel {}

class EditshippingAddress1Model {}

class EditshippingAddressModel {}

class PaymentInProgressModel {}

class ProductModel {}

class ReadyCardModel {}

class SettingsAddCardPopUpModel {}

class SettingsAddCardModel {
  Rx<String> masterCardImage = Rx(ImageConstant.imgMastercard);
  Rx<String> closeImage = Rx(ImageConstant.imgCloseIndigo50);
  Rx<String> cardNumber = Rx("lbl_1579".tr);
  Rx<String> cardHolderName = Rx("lbl_amanda_morgan".tr);
  Rx<String> expiryDate = Rx("lbl_12_22".tr);
}

class SettingsFullModel {}

class SettingsProfileModel {}

class SettingsModel {}

class ShippingAddressModel {}

class StartModel {}

class YourCardBeenChangedModel {}

class GridloremipsumItemModel {
  GridloremipsumItemModel(
      {this.image, this.loremipsum, this.price, this.priceOne, this.id}) {
    image = image ?? Rx(ImageConstant.imgImage31);

    loremipsum = loremipsum ?? Rx("msg_premium_notebook".tr);

    price = price ?? Rx("lbl_16_00".tr);

    priceOne = priceOne ?? Rx("lbl_20_00".tr);

    id = id ?? Rx("");
  }
  Rx<String>? image;

  Rx<String>? loremipsum;

  Rx<String>? price;

  Rx<String>? priceOne;

  Rx<String>? id;
}

class FlashSaleModel {
  Rx<List<GridloremipsumItemModel>> gridloremipsumItemList = Rx([
    GridloremipsumItemModel(
        image: ImageConstant.imgImage31.obs,
        loremipsum: "msg_premium_notebook".tr.obs,
        price: "lbl_16_00".tr.obs,
        priceOne: "lbl_20_00".tr.obs),
    GridloremipsumItemModel(
        image: ImageConstant.imgImage21.obs,
        loremipsum: "msg_small_notebook_4_3_x".tr.obs,
        price: "lbl_16_00".tr.obs,
        priceOne: "lbl_20_00".tr.obs),
    GridloremipsumItemModel(),
    GridloremipsumItemModel(),
    GridloremipsumItemModel(),
    GridloremipsumItemModel()
  ]);
}

class ListtitleItemModel {
  ListtitleItemModel(
      {this.image,
      this.imageOne,
      this.title,
      this.loremipsum,
      this.price,
      this.zipcode,
      this.titleone,
      this.titleTwo,
      this.id}) {
    image = image ?? Rx(ImageConstant.imgMastercard);

    imageOne = imageOne ?? Rx(ImageConstant.imgCloseIndigo50);

    title = title ?? Rx("msg".tr);

    zipcode = zipcode ?? Rx("lbl_1579".tr);

    titleone = titleone ?? Rx("lbl_amanda_morgan".tr);
    loremipsum = loremipsum ?? Rx("msg_small_notebook_4_3_x".tr);

    price = price ?? Rx("lbl_17_00".tr);

    titleTwo = titleTwo ?? Rx("lbl_12_22".tr);

    id = id ?? Rx("");
  }
  Rx<String>? image;

  Rx<String>? imageOne;
  Rx<String>? loremipsum;

  Rx<String>? price;
  Rx<String>? title;

  Rx<String>? zipcode;

  Rx<String>? titleone;

  Rx<String>? titleTwo;
  Rx<String>? id;
}

class ListpriceItemModel {
  ListpriceItemModel(
      {this.title,
      this.titleone,
      this.price,
      this.imageOne,
      this.titleTwo,
      this.titleThree,
      this.priceOne,
      this.titleFour,
      this.titleFive,
      this.priceTwo,
      this.id}) {
    title = title ?? Rx("msg_april_19_2020_12_31".tr);
    titleone = titleone ?? Rx("lbl_order_92287157".tr);
    price = price ?? Rx("lbl_14_00".tr);
    imageOne = imageOne ?? Rx(ImageConstant.imgBagRed300);
    titleTwo = titleTwo ?? Rx("msg_april_19_2020_12_31".tr);
    titleThree = titleThree ?? Rx("lbl_order_92287157".tr);
    priceOne = priceOne ?? Rx("lbl_37_00".tr);
    titleFour = titleFour ?? Rx("msg_april_19_2020_12_31".tr);
    titleFive = titleFive ?? Rx("lbl_order_92287157".tr);
    priceTwo = priceTwo ?? Rx("lbl_21_00".tr);
    id = id ?? Rx("");
  }
  Rx<String>? title;
  Rx<String>? titleone;
  Rx<String>? price;
  Rx<String>? imageOne;
  Rx<String>? titleTwo;
  Rx<String>? titleThree;
  Rx<String>? priceOne;
  Rx<String>? titleFour;
  Rx<String>? titleFive;
  Rx<String>? priceTwo;
  Rx<String>? id;
}

class PaymentMethodsHistoryModel {
  Rx<List<ListtitleItemModel>> listtitleItemList = Rx([
    ListtitleItemModel(
        image: ImageConstant.imgMastercard.obs,
        imageOne: ImageConstant.imgCloseIndigo50.obs,
        title: "msg".tr.obs,
        zipcode: "lbl_1579".tr.obs,
        titleone: "lbl_amanda_morgan".tr.obs,
        titleTwo: "lbl_12_22".tr.obs),
    ListtitleItemModel(title: "msg".tr.obs, zipcode: "lbl_1579".tr.obs)
  ]);

  Rx<List<ListpriceItemModel>> listpriceItemList = Rx([
    ListpriceItemModel(
        title: "msg_april_19_2020_12_31".tr.obs,
        titleone: "lbl_order_92287157".tr.obs,
        price: "lbl_14_00".tr.obs,
        imageOne: ImageConstant.imgBagRed300.obs,
        titleTwo: "msg_april_19_2020_12_31".tr.obs,
        titleThree: "lbl_order_92287157".tr.obs,
        priceOne: "lbl_37_00".tr.obs,
        titleFour: "msg_april_19_2020_12_31".tr.obs,
        titleFive: "lbl_order_92287157".tr.obs,
        priceTwo: "1b1_21_00".tr.obs),
    ListpriceItemModel(
        title: "msg_april_19_2020_12_31".tr.obs,
        titleone: "lbl_order_92287157".tr.obs,
        price: "161_75_00".tr.obs,
        imageOne: ImageConstant.imgBagPrimary.obs,
        titleTwo: "msg_april_19_2020_12_31".tr.obs,
        titleThree: "lbl_order_92287157".tr.obs,
        priceOne: "lbl_214_00".tr.obs,
        titleFour: "msg_april_19_2020_12_31".tr.obs,
        titleFive: "lbl_order_92287157".tr.obs,
        priceTwo: "lbl_53_00".tr.obs)
  ]);
}

class PaymentModel {
  Rx<List<ListtitleItemModel>> listtitleItemList = Rx([
    ListtitleItemModel(
        title: "lbl_1".tr.obs,
        imageOne: ImageConstant.imgImage21.obs,
        loremipsum: "msg_small_notebook_4_3_x".tr.obs,
        price: "lbl_17_00".tr.obs),
    ListtitleItemModel(
        title: "lbl_1".tr.obs,
        imageOne: ImageConstant.img61ksztzqkklAcUy1000.obs,
        loremipsum: "msg_small_notebook_4_3_x".tr.obs,
        price: "lbl_17_00".tr.obs)
  ]);
}

class ListfgrxmgjlItemModel {
  ListfgrxmgjlItemModel({this.fgrxmgjl, this.id}) {
    fgrxmgjl = fgrxmgjl ?? Rx(ImageConstant.img71fg5rxmgjl2);

    id = id ?? Rx("");
  }

  Rx<String>? fgrxmgjl;

  Rx<String>? id;
}

class ProductVariationsModel {
  Rx<List<ListfgrxmgjlItemModel>> listfgrxmgjlItemList = Rx([
    ListfgrxmgjlItemModel(fgrxmgjl: ImageConstant.img71fg5rxmgjl2.obs),
    ListfgrxmgjlItemModel(fgrxmgjl: ImageConstant.imgSL4001.obs),
    ListfgrxmgjlItemModel(fgrxmgjl: ImageConstant.imgCasioScientifi.obs)
  ]);
}

class ProfileVoucherReminderModel {
  Rx<List<RecentlyviewItemModel>> recentlyviewItemList = Rx([
    RecentlyviewItemModel(group: ImageConstant.img47121461.obs),
    RecentlyviewItemModel(group: ImageConstant.imgB292b4b046bd607.obs),
    RecentlyviewItemModel(group: ImageConstant.img297388RemovebgPreview.obs),
    RecentlyviewItemModel(),
    RecentlyviewItemModel()
  ]);
}

class RecentlyviewItemModel {
  RecentlyviewItemModel({this.group, this.id}) {
    group = group ?? Rx(ImageConstant.img47121461);

    id = id ?? Rx("");
  }

  Rx<String>? group;

  Rx<String>? id;
}

class RecentlyViewedItemModel {
  RecentlyViewedItemModel({this.group, this.id}) {
    group = group ?? Rx(ImageConstant.img47121461);

    id = id ?? Rx("");
  }

  Rx<String>? group;

  Rx<String>? id;
}

class ChipviewoneItemModel {
  ChipviewoneItemModel({this.oneTwo, this.isSelected}) {
    oneTwo = oneTwo ?? Rx("lbl_pen".tr);

    isSelected = isSelected ?? Rx(false);
  }

  Rx<String>? oneTwo;

  Rx<bool>? isSelected;
}

class ChipviewoneOneItemModel {
  ChipviewoneOneItemModel({this.oneOne, this.isSelected}) {
    oneOne = oneOne ?? Rx("lbl_brush".tr);

    isSelected = isSelected ?? Rx(false);
  }

  Rx<String>? oneOne;

  Rx<bool>? isSelected;
}

class SearchModel {
  Rx<List<ChipviewoneItemModel>> chipviewoneItemList = Rx([
    ChipviewoneItemModel(oneTwo: "lbl_pen".tr.obs),
    ChipviewoneItemModel(oneTwo: "lbl_notebook".tr.obs),
    ChipviewoneItemModel(oneTwo: "lbl_caculator".tr.obs),
    ChipviewoneItemModel(oneTwo: "lbl_ruler".tr.obs),
    ChipviewoneItemModel(oneTwo: "lbl_helmet".tr.obs)
  ]);

  Rx<List<ChipviewoneOneItemModel>> chipviewoneOneItemList = Rx([
    ChipviewoneOneItemModel(oneOne: "lbl_brush".tr.obs),
    ChipviewoneOneItemModel(oneOne: "lbl_dental_miror".tr.obs),
    ChipviewoneOneItemModel(oneOne: "lbl_scalpel".tr.obs),
    ChipviewoneOneItemModel(oneOne: "lbl_laptop".tr.obs),
    ChipviewoneOneItemModel(oneOne: "lbl_explorer".tr.obs)
  ]);
}

class SubcategoiesItemModel {
  SubcategoiesItemModel({this.essentialsone, this.title, this.id}) {
    essentialsone = essentialsone ?? Rx(ImageConstant.img47121461);
    title = title ?? Rx("lbl_essentials".tr);

    id = id ?? Rx("");
  }

  Rx<String>? essentialsone;

  Rx<String>? title;

  Rx<String>? id;
}

class ShopClothingModel {
  Rx<List<GridloremipsumItemModel>> gridloremipsumItemList = Rx([
    GridloremipsumItemModel(
        image: ImageConstant.imgImage11.obs,
        loremipsum: "msg_premium_notebook".tr.obs,
        price: "lbl_17_00".tr.obs),
    GridloremipsumItemModel(
        image: ImageConstant.imgImage51.obs,
        loremipsum: "msg_lorem_ipsum_dolor".tr.obs,
        price: "lbl_17_00".tr.obs),
    GridloremipsumItemModel(
        loremipsum: "lbl_casio_fx_991".tr.obs, price: "lbl_17_00".tr.obs),
    GridloremipsumItemModel(
        loremipsum: "msg_lorem_ipsum_dolor".tr.obs, price: "lbl_17_00".tr.obs)
  ]);

  Rx<List<SubcategoiesItemModel>> subcategoiesItemList = Rx([
    SubcategoiesItemModel(
        essentialsone: ImageConstant.img47121461.obs,
        title: "lbl_essentials".tr.obs),
    SubcategoiesItemModel(
        essentialsone: ImageConstant.imgB292b4b046bd607.obs,
        title: "lbl_arts".tr.obs),
    SubcategoiesItemModel(
        essentialsone: ImageConstant.imgWorkingHat512.obs,
        title: "lbl_helmet".tr.obs),
    SubcategoiesItemModel(
        essentialsone: ImageConstant.imgMonitorIconSi.obs,
        title: "lbl_laptops".tr.obs),
    SubcategoiesItemModel(
        essentialsone: ImageConstant.img297388RemovebgPreview.obs,
        title: "lbl_dental".tr.obs)
  ]);
}

class BigsalebannerItemModel {
  BigsalebannerItemModel({this.title, this.id}) {
    title = title ?? Rx("lbl_shop".tr);

    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? id;
}

class GridfabercastelItemModel {
  GridfabercastelItemModel(
      {this.image1oneOne,
      this.fabercastellg,
      this.essentialsone,
      this.essentials,
      this.title,
      this.id}) {
    image1oneOne = image1oneOne ?? Rx(ImageConstant.imgImage11);

    fabercastellg = fabercastellg ?? Rx(ImageConstant.imgFaberCastellG);

    essentialsone = essentialsone ?? Rx(ImageConstant.img169980211011b);

    essentials = essentials ?? Rx(ImageConstant.imgImages21);

    title = title ?? Rx("lbl_essentials".tr);

    id = id ?? Rx("");
  }

  Rx<String>? image1oneOne;

  Rx<String>? fabercastellg;

  Rx<String>? essentialsone;

  Rx<String>? essentials;

  Rx<String>? title;

  Rx<String>? id;
}

class ShopInitialModel {
  Rx<List<BigsalebannerItemModel>> bigsalebannerItemList =
      Rx([BigsalebannerItemModel(title: "lbl_shop".tr.obs)]);

  Rx<List<GridfabercastelItemModel>> gridfabercastelItemList = Rx([
    GridfabercastelItemModel(
        image1oneOne: ImageConstant.imgImage11.obs,
        fabercastellg: ImageConstant.imgFaberCastellG.obs,
        essentialsone: ImageConstant.img169980211011b.obs,
        essentials: ImageConstant.imgImages21.obs,
        title: "lbl_essentials".tr.obs),
    GridfabercastelItemModel(
        image1oneOne: ImageConstant.imgDownload1.obs,
        fabercastellg: ImageConstant.imgCameloilcolourSet18x9ml1.obs,
        essentialsone: ImageConstant.img71xuw6pdt211.obs),
    GridfabercastelItemModel(
        image1oneOne: ImageConstant.imgNpkh1Zi1.obs,
        fabercastellg: ImageConstant.img8289321.obs,
        essentialsone: ImageConstant.img61g2nrfuvels11500.obs,
        essentials: ImageConstant.img61cbb0anjilAc.obs,
        title: "lbl_dental".tr.obs),
    GridfabercastelItemModel(
        image1oneOne: ImageConstant.imgwire32743381920.obs,
        fabercastellg: ImageConstant.imgPersonSensorB.obs),
    GridfabercastelItemModel(
        essentialsone: ImageConstant.img61ksztzqkklAcUy1000.obs),
    GridfabercastelItemModel(
        essentialsone: ImageConstant.imgwhatsappImage78x60.obs)
  ]);
}

class ShopModel {}

class ListloremipsumItemModel {
  ListloremipsumItemModel(
      {this.image,
      this.imageOne,
      this.loremipsum,
      this.price,
      this.color,
      this.size,
      this.imageTwo,
      this.id}) {
    image = image ?? Rx(ImageConstant.imgFrame);

    imageOne = imageOne ?? Rx(ImageConstant.img61ksztzqkklAcUy1000);

    loremipsum = loremipsum ?? Rx("msg_geometric_tool_case".tr);

    price = price ?? Rx("lbl_17_00".tr);

    color = color ?? Rx("lbl_pink".tr);

    size = size ?? Rx("lbl_m".tr);

    imageTwo = imageTwo ?? Rx(ImageConstant.imgClosePrimary);

    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? imageOne;

  Rx<String>? loremipsum;

  Rx<String>? price;

  Rx<String>? color;
  Rx<String>? size;

  Rx<String>? imageTwo;

  Rx<String>? id;
}

class WishlistModel {
  Rx<List<RecentlyviewItemModel>> recentlyviewItemList = Rx([
    RecentlyviewItemModel(group: ImageConstant.img47121461.obs),
    RecentlyviewItemModel(group: ImageConstant.imgB292b4b046bd607.obs),
    RecentlyviewItemModel(group: ImageConstant.img297388RemovebgPreview.obs),
    RecentlyviewItemModel(),
    RecentlyviewItemModel()
  ]);

  Rx<List<ListloremipsumItemModel>> listloremipsumItemList = Rx([
    ListloremipsumItemModel(
        image: ImageConstant.imgFrame.obs,
        imageOne: ImageConstant.img61ksztzqkklAcUy1000.obs,
        loremipsum: "msg_geometric_tool_case".tr.obs,
        price: "lbl_17_00".tr.obs,
        color: "lbl_pink".tr.obs,
        size: "lbl_m".tr.obs,
        imageTwo: ImageConstant.imgClosePrimary.obs),
    ListloremipsumItemModel(
        image: ImageConstant.imgFrame.obs,
        imageOne: ImageConstant.imgImage21.obs,
        loremipsum: "msg_small_notebook_4_3_x".tr.obs,
        color: "lbl_pink".tr.obs,
        size: "lbl_m".tr.obs,
        imageTwo: ImageConstant.imgClosePrimary.obs),
    ListloremipsumItemModel(
        image: ImageConstant.imgFrame.obs,
        imageOne: ImageConstant.img51zvhhsNnl1.obs,
        loremipsum: "msg_elmaayergy_b0302".tr.obs,
        price: "lbl_27_00".tr.obs,
        color: "lbl_pink".tr.obs,
        size: "lbl_m".tr.obs,
        imageTwo: ImageConstant.imgClosePrimary.obs),
    ListloremipsumItemModel(
        image: ImageConstant.imgFrame.obs,
        imageOne: ImageConstant.img71fg5rxmgjl2.obs,
        loremipsum: "lbl_casio_fx_991".tr.obs,
        price: "lbl_19_00".tr.obs,
        color: "lbl_pink".tr.obs,
        size: "lbl_m".tr.obs,
        imageTwo: ImageConstant.imgClosePrimary.obs),
    ListloremipsumItemModel(
        image: ImageConstant.imgRemove.obs,
        imageOne: ImageConstant.img51tv0ipy4hlAc.obs,
        loremipsum: "msg_lorem_ipsum_dolor2".tr.obs,
        price: "lbl_17_00".tr.obs)
  ]);
}
