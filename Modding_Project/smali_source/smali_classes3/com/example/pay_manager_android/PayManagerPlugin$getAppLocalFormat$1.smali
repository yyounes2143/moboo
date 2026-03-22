.class public final Lcom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0016\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00072\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1",
        "Lcom/changdu/component/pay/base/service/OnPurchaseMonetizationListener;",
        "onPurchaseItemMonetizationResult",
        "",
        "inappItemList",
        "Ljava/util/ArrayList;",
        "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
        "Lkotlin/collections/ArrayList;",
        "subsAppItemList",
        "remove_manager_update_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPayManagerPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayManagerPlugin.kt\ncom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,506:1\n1855#2,2:507\n1855#2,2:509\n*S KotlinDebug\n*F\n+ 1 PayManagerPlugin.kt\ncom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1\n*L\n456#1:507,2\n467#1:509,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;


# direct methods
.method public constructor <init>(Lcom/example/pay_manager_android/PayManagerPlugin;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onPurchaseItemMonetizationResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    const/4 v4, 0x5

    .line 6
    const/4 v5, 0x1

    .line 7
    iget-object v6, v0, Lcom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/example/pay_manager_android/PayManagerPlugin;

    .line 8
    .line 9
    invoke-static {v6}, Lcom/example/pay_manager_android/PayManagerPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/example/pay_manager_android/PayManagerPlugin;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    new-instance v6, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v8, 0x0

    .line 25
    move v9, v8

    .line 26
    :goto_0
    const-string v10, "priceCurrencyCode"

    .line 27
    .line 28
    const-string v11, "priceAmountMicros"

    .line 29
    .line 30
    const-string v12, "isSubs"

    .line 31
    .line 32
    const-string v13, "formattedPrice"

    .line 33
    .line 34
    const-string v14, "itemId"

    .line 35
    .line 36
    if-ge v9, v7, :cond_0

    .line 37
    .line 38
    move-object/from16 v15, p1

    .line 39
    .line 40
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v16

    .line 44
    add-int/2addr v9, v5

    .line 45
    check-cast v16, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;

    .line 46
    .line 47
    const/16 v17, 0x4

    .line 48
    .line 49
    invoke-virtual/range {v16 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getItemId()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v14, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual/range {v16 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getFormattedPrice()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    invoke-virtual/range {v16 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->isSubs()Z

    .line 66
    .line 67
    .line 68
    move-result v14

    .line 69
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 70
    .line 71
    .line 72
    move-result-object v14

    .line 73
    invoke-static {v12, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    invoke-virtual/range {v16 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getPriceAmountMicros()J

    .line 78
    .line 79
    .line 80
    move-result-wide v18

    .line 81
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-static {v11, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual/range {v16 .. v16}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getPriceCurrencyCode()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-static {v10, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    new-array v14, v4, [Lkotlin/Pair;

    .line 98
    .line 99
    aput-object v1, v14, v8

    .line 100
    .line 101
    aput-object v13, v14, v5

    .line 102
    .line 103
    aput-object v12, v14, v3

    .line 104
    .line 105
    aput-object v11, v14, v2

    .line 106
    .line 107
    aput-object v10, v14, v17

    .line 108
    .line 109
    invoke-static {v14}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const/16 v17, 0x4

    .line 118
    .line 119
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    move v7, v8

    .line 124
    :goto_1
    if-ge v7, v1, :cond_1

    .line 125
    .line 126
    move-object/from16 v9, p2

    .line 127
    .line 128
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v15

    .line 132
    add-int/2addr v7, v5

    .line 133
    check-cast v15, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;

    .line 134
    .line 135
    move/from16 v16, v2

    .line 136
    .line 137
    invoke-virtual {v15}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getItemId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    move/from16 v18, v3

    .line 146
    .line 147
    invoke-virtual {v15}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getFormattedPrice()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v15}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->isSubs()Z

    .line 156
    .line 157
    .line 158
    move-result v19

    .line 159
    move/from16 v20, v5

    .line 160
    .line 161
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-static {v12, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v15}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getPriceAmountMicros()J

    .line 170
    .line 171
    .line 172
    move-result-wide v21

    .line 173
    move/from16 v19, v8

    .line 174
    .line 175
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    invoke-static {v11, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    invoke-virtual {v15}, Lcom/changdu/component/pay/base/model/PurchaseItemMonetization;->getPriceCurrencyCode()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v15

    .line 187
    invoke-static {v10, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 188
    .line 189
    .line 190
    move-result-object v15

    .line 191
    move/from16 p1, v1

    .line 192
    .line 193
    new-array v1, v4, [Lkotlin/Pair;

    .line 194
    .line 195
    aput-object v2, v1, v19

    .line 196
    .line 197
    aput-object v3, v1, v20

    .line 198
    .line 199
    aput-object v5, v1, v18

    .line 200
    .line 201
    aput-object v8, v1, v16

    .line 202
    .line 203
    aput-object v15, v1, v17

    .line 204
    .line 205
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move/from16 v1, p1

    .line 213
    .line 214
    move/from16 v2, v16

    .line 215
    .line 216
    move/from16 v3, v18

    .line 217
    .line 218
    move/from16 v8, v19

    .line 219
    .line 220
    move/from16 v5, v20

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_1
    iget-object v1, v0, Lcom/example/pay_manager_android/PayManagerPlugin$getAppLocalFormat$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 224
    .line 225
    invoke-interface {v1, v6}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    return-void
.end method
