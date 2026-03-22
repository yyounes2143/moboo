.class Lio/flutter/plugins/googlemobileads/AdMessageCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "Proguard"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final VALUE_ADAPTER_RESPONSE_INFO:B = -0x73t

.field private static final VALUE_ADAPTER_STATUS:B = -0x78t

.field private static final VALUE_ADMANAGER_AD_REQUEST:B = -0x7at

.field private static final VALUE_AD_ERROR:B = -0x75t

.field private static final VALUE_AD_REQUEST:B = -0x7ft

.field private static final VALUE_AD_SIZE:B = -0x80t

.field private static final VALUE_ANCHORED_ADAPTIVE_BANNER_AD_SIZE:B = -0x72t

.field private static final VALUE_COLOR:B = -0x67t

.field private static final VALUE_FLUID_AD_SIZE:B = -0x7et

.field private static final VALUE_INITIALIZATION_STATE:B = -0x79t

.field private static final VALUE_INITIALIZATION_STATUS:B = -0x77t

.field private static final VALUE_INLINE_ADAPTIVE_BANNER_AD_SIZE:B = -0x6et

.field private static final VALUE_LOAD_AD_ERROR:B = -0x7bt

.field private static final VALUE_MEDIATION_EXTRAS:B = -0x66t

.field private static final VALUE_NATIVE_AD_OPTIONS:B = -0x70t

.field private static final VALUE_NATIVE_TEMPLATE_FONT_STYLE:B = -0x69t

.field private static final VALUE_NATIVE_TEMPLATE_STYLE:B = -0x6bt

.field private static final VALUE_NATIVE_TEMPLATE_TEXT_STYLE:B = -0x6at

.field private static final VALUE_NATIVE_TEMPLATE_TYPE:B = -0x68t

.field private static final VALUE_REQUEST_CONFIGURATION_PARAMS:B = -0x6ct

.field private static final VALUE_RESPONSE_INFO:B = -0x74t

.field private static final VALUE_REWARD_ITEM:B = -0x7ct

.field private static final VALUE_SERVER_SIDE_VERIFICATION_OPTIONS:B = -0x76t

.field private static final VALUE_SMART_BANNER_AD_SIZE:B = -0x71t

.field private static final VALUE_VIDEO_OPTIONS:B = -0x6ft


# instance fields
.field final adSizeFactory:Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field context:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final requestAgentProvider:Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 5
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 6
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->context:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->adSizeFactory:Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    .line 8
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->requestAgentProvider:Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->context:Landroid/content/Context;

    .line 3
    new-instance p1, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    invoke-direct {p1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->adSizeFactory:Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    .line 4
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->requestAgentProvider:Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;

    return-void
.end method

.method private static booleanValueOf(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-super/range {p0 .. p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    return-object v1

    .line 13
    :pswitch_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;->setMediationExtras(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v2

    .line 52
    :catch_0
    return-object v3

    .line 53
    :pswitch_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Integer;

    .line 92
    .line 93
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 116
    .line 117
    .line 118
    return-object v5

    .line 119
    :pswitch_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    invoke-static {v1}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;->fromIntValue(I)Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    return-object v1

    .line 138
    :pswitch_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/Integer;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-static {v1}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;->fromIntValue(I)Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    return-object v1

    .line 157
    :pswitch_5
    new-instance v2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v0, v6, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/lang/Double;

    .line 198
    .line 199
    invoke-direct {v2, v3, v4, v5, v1}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;-><init>(Landroid/graphics/drawable/ColorDrawable;Landroid/graphics/drawable/ColorDrawable;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;Ljava/lang/Double;)V

    .line 200
    .line 201
    .line 202
    return-object v2

    .line 203
    :pswitch_6
    new-instance v6, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    move-object v7, v2

    .line 214
    check-cast v7, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    move-object v8, v2

    .line 225
    check-cast v8, Landroid/graphics/drawable/ColorDrawable;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    move-object v9, v2

    .line 236
    check-cast v9, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 237
    .line 238
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    move-object v10, v2

    .line 247
    check-cast v10, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    move-object v11, v2

    .line 258
    check-cast v11, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    move-object v12, v1

    .line 269
    check-cast v12, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 270
    .line 271
    invoke-direct/range {v6 .. v12}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;-><init>(Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;Landroid/graphics/drawable/ColorDrawable;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;)V

    .line 272
    .line 273
    .line 274
    return-object v6

    .line 275
    :pswitch_7
    new-instance v2, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 276
    .line 277
    invoke-direct {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    check-cast v3, Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setMaxAdContentRating(Ljava/lang/String;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    check-cast v3, Ljava/lang/Integer;

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Ljava/util/List;

    .line 336
    .line 337
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    return-object v1

    .line 345
    :pswitch_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Ljava/lang/Integer;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    move-object v9, v3

    .line 364
    check-cast v9, Ljava/lang/Integer;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    move-object v8, v1

    .line 375
    check-cast v8, Ljava/lang/Integer;

    .line 376
    .line 377
    new-instance v4, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;

    .line 378
    .line 379
    iget-object v5, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->adSizeFactory:Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    .line 380
    .line 381
    iget-object v6, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->context:Landroid/content/Context;

    .line 382
    .line 383
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    invoke-direct/range {v4 .. v9}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;-><init>(Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 388
    .line 389
    .line 390
    return-object v4

    .line 391
    :pswitch_9
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    check-cast v3, Ljava/lang/Boolean;

    .line 402
    .line 403
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    check-cast v4, Ljava/lang/Boolean;

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    check-cast v1, Ljava/lang/Boolean;

    .line 422
    .line 423
    invoke-direct {v2, v3, v4, v1}, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 424
    .line 425
    .line 426
    return-object v2

    .line 427
    :pswitch_a
    new-instance v5, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 430
    .line 431
    .line 432
    move-result v2

    .line 433
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    move-object v6, v2

    .line 438
    check-cast v6, Ljava/lang/Integer;

    .line 439
    .line 440
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    move-object v7, v2

    .line 449
    check-cast v7, Ljava/lang/Integer;

    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    move-object v8, v2

    .line 460
    check-cast v8, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;

    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    move-object v9, v2

    .line 471
    check-cast v9, Ljava/lang/Boolean;

    .line 472
    .line 473
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v2

    .line 481
    move-object v10, v2

    .line 482
    check-cast v10, Ljava/lang/Boolean;

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    move-object v11, v1

    .line 493
    check-cast v11, Ljava/lang/Boolean;

    .line 494
    .line 495
    invoke-direct/range {v5 .. v11}, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 496
    .line 497
    .line 498
    return-object v5

    .line 499
    :pswitch_b
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterAdSize$SmartBannerAdSize;

    .line 500
    .line 501
    invoke-direct {v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$SmartBannerAdSize;-><init>()V

    .line 502
    .line 503
    .line 504
    return-object v1

    .line 505
    :pswitch_c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    check-cast v2, Ljava/lang/String;

    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    check-cast v1, Ljava/lang/Integer;

    .line 524
    .line 525
    new-instance v3, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;

    .line 526
    .line 527
    iget-object v4, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->context:Landroid/content/Context;

    .line 528
    .line 529
    iget-object v5, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->adSizeFactory:Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;

    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 532
    .line 533
    .line 534
    move-result v1

    .line 535
    invoke-direct {v3, v4, v5, v2, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;-><init>(Landroid/content/Context;Lio/flutter/plugins/googlemobileads/FlutterAdSize$AdSizeFactory;Ljava/lang/String;I)V

    .line 536
    .line 537
    .line 538
    return-object v3

    .line 539
    :pswitch_d
    new-instance v6, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    move-object v7, v2

    .line 550
    check-cast v7, Ljava/lang/String;

    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 553
    .line 554
    .line 555
    move-result v2

    .line 556
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Ljava/lang/Long;

    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 563
    .line 564
    .line 565
    move-result-wide v8

    .line 566
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v2

    .line 574
    move-object v10, v2

    .line 575
    check-cast v10, Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    move-object v11, v2

    .line 586
    check-cast v11, Ljava/util/Map;

    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 589
    .line 590
    .line 591
    move-result v2

    .line 592
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    move-object v12, v2

    .line 597
    check-cast v12, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 598
    .line 599
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 600
    .line 601
    .line 602
    move-result v2

    .line 603
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    move-object v13, v2

    .line 608
    check-cast v13, Ljava/lang/String;

    .line 609
    .line 610
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    move-object v14, v2

    .line 619
    check-cast v14, Ljava/lang/String;

    .line 620
    .line 621
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    move-object v15, v2

    .line 630
    check-cast v15, Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    move-object/from16 v16, v1

    .line 641
    .line 642
    check-cast v16, Ljava/lang/String;

    .line 643
    .line 644
    invoke-direct/range {v6 .. v16}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    return-object v6

    .line 648
    :pswitch_e
    new-instance v7, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;

    .line 649
    .line 650
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 651
    .line 652
    .line 653
    move-result v2

    .line 654
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    move-object v8, v2

    .line 659
    check-cast v8, Ljava/lang/String;

    .line 660
    .line 661
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    move-object v9, v2

    .line 670
    check-cast v9, Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 673
    .line 674
    .line 675
    move-result v2

    .line 676
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    move-object v10, v2

    .line 681
    check-cast v10, Ljava/util/List;

    .line 682
    .line 683
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    move-object v11, v2

    .line 692
    check-cast v11, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 695
    .line 696
    .line 697
    move-result v2

    .line 698
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v1

    .line 702
    move-object v12, v1

    .line 703
    check-cast v12, Ljava/util/Map;

    .line 704
    .line 705
    invoke-direct/range {v7 .. v12}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;Ljava/util/Map;)V

    .line 706
    .line 707
    .line 708
    return-object v7

    .line 709
    :pswitch_f
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 710
    .line 711
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 712
    .line 713
    .line 714
    move-result v3

    .line 715
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    check-cast v3, Ljava/lang/Integer;

    .line 720
    .line 721
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 726
    .line 727
    .line 728
    move-result v4

    .line 729
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v4

    .line 733
    check-cast v4, Ljava/lang/String;

    .line 734
    .line 735
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 736
    .line 737
    .line 738
    move-result v5

    .line 739
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    check-cast v1, Ljava/lang/String;

    .line 744
    .line 745
    invoke-direct {v2, v3, v4, v1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    return-object v2

    .line 749
    :pswitch_10
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;

    .line 750
    .line 751
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    check-cast v3, Ljava/lang/String;

    .line 760
    .line 761
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 762
    .line 763
    .line 764
    move-result v4

    .line 765
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    check-cast v1, Ljava/lang/String;

    .line 770
    .line 771
    invoke-direct {v2, v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    return-object v2

    .line 775
    :pswitch_11
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;

    .line 776
    .line 777
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 778
    .line 779
    .line 780
    move-result v3

    .line 781
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    check-cast v1, Ljava/util/Map;

    .line 786
    .line 787
    invoke-direct {v2, v1}, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;-><init>(Ljava/util/Map;)V

    .line 788
    .line 789
    .line 790
    return-object v2

    .line 791
    :pswitch_12
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;

    .line 792
    .line 793
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 794
    .line 795
    .line 796
    move-result v3

    .line 797
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v3

    .line 801
    check-cast v3, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 802
    .line 803
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v4

    .line 811
    check-cast v4, Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    check-cast v1, Ljava/lang/Number;

    .line 822
    .line 823
    invoke-direct {v2, v3, v4, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;-><init>(Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;Ljava/lang/String;Ljava/lang/Number;)V

    .line 824
    .line 825
    .line 826
    return-object v2

    .line 827
    :pswitch_13
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 828
    .line 829
    .line 830
    move-result v2

    .line 831
    invoke-virtual {v0, v2, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    check-cast v1, Ljava/lang/String;

    .line 836
    .line 837
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    const-string v2, "ready"

    .line 841
    .line 842
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    if-nez v2, :cond_1

    .line 847
    .line 848
    const-string v2, "notReady"

    .line 849
    .line 850
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    if-eqz v2, :cond_0

    .line 855
    .line 856
    sget-object v1, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;->NOT_READY:Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 857
    .line 858
    return-object v1

    .line 859
    :cond_0
    const-string v2, "Unable to handle state: %s"

    .line 860
    .line 861
    const/4 v3, 0x1

    .line 862
    new-array v3, v3, [Ljava/lang/Object;

    .line 863
    .line 864
    const/4 v4, 0x0

    .line 865
    aput-object v1, v3, v4

    .line 866
    .line 867
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 872
    .line 873
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v2

    .line 877
    :cond_1
    sget-object v1, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;->READY:Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 878
    .line 879
    return-object v1

    .line 880
    :pswitch_14
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;

    .line 881
    .line 882
    invoke-direct {v2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;-><init>()V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 886
    .line 887
    .line 888
    move-result v3

    .line 889
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    check-cast v3, Ljava/util/List;

    .line 894
    .line 895
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setKeywords(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v3

    .line 906
    check-cast v3, Ljava/lang/String;

    .line 907
    .line 908
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 912
    .line 913
    .line 914
    move-result v3

    .line 915
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object v3

    .line 919
    check-cast v3, Ljava/util/Map;

    .line 920
    .line 921
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->setCustomTargeting(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 925
    .line 926
    .line 927
    move-result v3

    .line 928
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    check-cast v3, Ljava/util/Map;

    .line 933
    .line 934
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->setCustomTargetingLists(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    move-result-object v3

    .line 945
    check-cast v3, Ljava/lang/Boolean;

    .line 946
    .line 947
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setNonPersonalizedAds(Ljava/lang/Boolean;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    check-cast v3, Ljava/util/List;

    .line 959
    .line 960
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setNeighboringContentUrls(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 964
    .line 965
    .line 966
    move-result v3

    .line 967
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    check-cast v3, Ljava/lang/Integer;

    .line 972
    .line 973
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setHttpTimeoutMillis(Ljava/lang/Integer;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    check-cast v3, Ljava/lang/String;

    .line 985
    .line 986
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->setPublisherProvidedId(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 990
    .line 991
    .line 992
    move-result v3

    .line 993
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 994
    .line 995
    .line 996
    move-result-object v3

    .line 997
    check-cast v3, Ljava/lang/String;

    .line 998
    .line 999
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationNetworkExtrasIdentifier(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1000
    .line 1001
    .line 1002
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 1003
    .line 1004
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    check-cast v3, Ljava/util/Map;

    .line 1016
    .line 1017
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setAdMobExtras(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1018
    .line 1019
    .line 1020
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->requestAgentProvider:Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;

    .line 1021
    .line 1022
    invoke-virtual {v3}, Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;->getRequestAgent()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1030
    .line 1031
    .line 1032
    move-result v3

    .line 1033
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    check-cast v1, Ljava/util/List;

    .line 1038
    .line 1039
    invoke-virtual {v2, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationExtras(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest$Builder;->build()Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v1

    .line 1046
    return-object v1

    .line 1047
    :pswitch_15
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;

    .line 1048
    .line 1049
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    check-cast v3, Ljava/lang/Integer;

    .line 1058
    .line 1059
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1060
    .line 1061
    .line 1062
    move-result v3

    .line 1063
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1064
    .line 1065
    .line 1066
    move-result v4

    .line 1067
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v4

    .line 1071
    check-cast v4, Ljava/lang/String;

    .line 1072
    .line 1073
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1074
    .line 1075
    .line 1076
    move-result v5

    .line 1077
    invoke-virtual {v0, v5, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v5

    .line 1081
    check-cast v5, Ljava/lang/String;

    .line 1082
    .line 1083
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1084
    .line 1085
    .line 1086
    move-result v6

    .line 1087
    invoke-virtual {v0, v6, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    check-cast v1, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;

    .line 1092
    .line 1093
    invoke-direct {v2, v3, v4, v5, v1}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;)V

    .line 1094
    .line 1095
    .line 1096
    return-object v2

    .line 1097
    :pswitch_16
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;

    .line 1098
    .line 1099
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1100
    .line 1101
    .line 1102
    move-result v3

    .line 1103
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    check-cast v3, Ljava/lang/Integer;

    .line 1108
    .line 1109
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1110
    .line 1111
    .line 1112
    move-result v4

    .line 1113
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    check-cast v1, Ljava/lang/String;

    .line 1118
    .line 1119
    invoke-direct {v2, v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 1120
    .line 1121
    .line 1122
    return-object v2

    .line 1123
    :pswitch_17
    new-instance v1, Lio/flutter/plugins/googlemobileads/FlutterAdSize$FluidAdSize;

    .line 1124
    .line 1125
    invoke-direct {v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize$FluidAdSize;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    return-object v1

    .line 1129
    :pswitch_18
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1130
    .line 1131
    invoke-direct {v2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;-><init>()V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1135
    .line 1136
    .line 1137
    move-result v3

    .line 1138
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    check-cast v3, Ljava/util/List;

    .line 1143
    .line 1144
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setKeywords(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v2

    .line 1148
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1149
    .line 1150
    .line 1151
    move-result v3

    .line 1152
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v3

    .line 1156
    check-cast v3, Ljava/lang/String;

    .line 1157
    .line 1158
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1163
    .line 1164
    .line 1165
    move-result v3

    .line 1166
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    invoke-static {v3}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->booleanValueOf(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setNonPersonalizedAds(Ljava/lang/Boolean;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v2

    .line 1178
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1179
    .line 1180
    .line 1181
    move-result v3

    .line 1182
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v3

    .line 1186
    check-cast v3, Ljava/util/List;

    .line 1187
    .line 1188
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setNeighboringContentUrls(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v2

    .line 1192
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1193
    .line 1194
    .line 1195
    move-result v3

    .line 1196
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v3

    .line 1200
    check-cast v3, Ljava/lang/Integer;

    .line 1201
    .line 1202
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setHttpTimeoutMillis(Ljava/lang/Integer;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v2

    .line 1206
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1207
    .line 1208
    .line 1209
    move-result v3

    .line 1210
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v3

    .line 1214
    check-cast v3, Ljava/lang/String;

    .line 1215
    .line 1216
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationNetworkExtrasIdentifier(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v2

    .line 1220
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 1221
    .line 1222
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v2

    .line 1226
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1227
    .line 1228
    .line 1229
    move-result v3

    .line 1230
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v3

    .line 1234
    check-cast v3, Ljava/util/Map;

    .line 1235
    .line 1236
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setAdMobExtras(Ljava/util/Map;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v2

    .line 1240
    iget-object v3, v0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->requestAgentProvider:Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;

    .line 1241
    .line 1242
    invoke-virtual {v3}, Lio/flutter/plugins/googlemobileads/FlutterRequestAgentProvider;->getRequestAgent()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    invoke-virtual {v2, v3}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1251
    .line 1252
    .line 1253
    move-result v3

    .line 1254
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v1

    .line 1258
    check-cast v1, Ljava/util/List;

    .line 1259
    .line 1260
    invoke-virtual {v2, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->setMediationExtras(Ljava/util/List;)Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-virtual {v1}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest$Builder;->build()Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    return-object v1

    .line 1269
    :pswitch_19
    new-instance v2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 1270
    .line 1271
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {v0, v3, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v3

    .line 1279
    check-cast v3, Ljava/lang/Integer;

    .line 1280
    .line 1281
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1282
    .line 1283
    .line 1284
    move-result v3

    .line 1285
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 1286
    .line 1287
    .line 1288
    move-result v4

    .line 1289
    invoke-virtual {v0, v4, v1}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v1

    .line 1293
    check-cast v1, Ljava/lang/Integer;

    .line 1294
    .line 1295
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1296
    .line 1297
    .line 1298
    move-result v1

    .line 1299
    invoke-direct {v2, v3, v1}, Lio/flutter/plugins/googlemobileads/FlutterAdSize;-><init>(II)V

    .line 1300
    .line 1301
    .line 1302
    return-object v2

    .line 1303
    :pswitch_data_0
    .packed-switch -0x80
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public setMediationNetworkExtrasProvider(Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->mediationNetworkExtrasProvider:Lio/flutter/plugins/googlemobileads/MediationNetworkExtrasProvider;

    .line 2
    .line 3
    return-void
.end method

.method public writeAdSize(Ljava/io/ByteArrayOutputStream;Lio/flutter/plugins/googlemobileads/FlutterAdSize;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;

    .line 6
    .line 7
    const/16 v0, -0x6e

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->width:I

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;->maxHeight:Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$InlineAdaptiveBannerAdSize;->orientation:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/16 v0, -0x72

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;

    .line 42
    .line 43
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$AnchoredAdaptiveBannerAdSize;->orientation:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->width:I

    .line 49
    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$SmartBannerAdSize;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const/16 p2, -0x71

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize$FluidAdSize;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/16 p2, -0x7e

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    const/16 v0, -0x80

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    .line 82
    .line 83
    iget v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->width:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;->height:I

    .line 93
    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdSize;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeAdSize(Ljava/io/ByteArrayOutputStream;Lio/flutter/plugins/googlemobileads/FlutterAdSize;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/16 v0, -0x7a

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 19
    .line 20
    .line 21
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;

    .line 22
    .line 23
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getKeywords()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getContentUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->getCustomTargeting()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->getCustomTargetingLists()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getNonPersonalizedAds()Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getNeighboringContentUrls()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getHttpTimeoutMillis()Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdManagerAdRequest;->getPublisherProvidedId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getMediationExtrasIdentifier()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getAdMobExtras()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getMediationExtras()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 102
    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const/16 v0, -0x7f

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 108
    .line 109
    .line 110
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;

    .line 111
    .line 112
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getKeywords()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getContentUrl()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getNonPersonalizedAds()Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getNeighboringContentUrls()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getHttpTimeoutMillis()Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getMediationExtrasIdentifier()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getAdMobExtras()Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAdRequest;->getMediationExtras()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_2
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;

    .line 170
    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    const/16 v0, -0x66

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    .line 177
    .line 178
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterMediationExtras;->extras:Ljava/util/Map;

    .line 192
    .line 193
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_3
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;

    .line 198
    .line 199
    if-eqz v1, :cond_4

    .line 200
    .line 201
    const/16 v0, -0x7c

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 204
    .line 205
    .line 206
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;

    .line 207
    .line 208
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;->amount:Ljava/lang/Integer;

    .line 209
    .line 210
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterRewardedAd$FlutterRewardItem;->type:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :cond_4
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 220
    .line 221
    if-eqz v1, :cond_5

    .line 222
    .line 223
    const/16 v0, -0x73

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 226
    .line 227
    .line 228
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 229
    .line 230
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdapterClassName()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getLatencyMillis()J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getDescription()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdUnitMapping()Ljava/util/Map;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getError()Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdSourceName()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdSourceId()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdSourceInstanceName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;->getAdSourceInstanceId()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p2

    .line 294
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :cond_5
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;

    .line 299
    .line 300
    if-eqz v1, :cond_6

    .line 301
    .line 302
    const/16 v0, -0x74

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    .line 306
    .line 307
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;

    .line 308
    .line 309
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;->getResponseId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;->getAdapterResponses()Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;->getLoadedAdapterResponseInfo()Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdapterResponseInfo;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;->getResponseExtras()Ljava/util/Map;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_6
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;

    .line 346
    .line 347
    if-eqz v1, :cond_7

    .line 348
    .line 349
    const/16 v0, -0x7b

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    .line 353
    .line 354
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;

    .line 355
    .line 356
    iget v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;->code:I

    .line 357
    .line 358
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;->domain:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;->message:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterLoadAdError;->responseInfo:Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterResponseInfo;

    .line 376
    .line 377
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    return-void

    .line 381
    :cond_7
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 382
    .line 383
    if-eqz v1, :cond_8

    .line 384
    .line 385
    const/16 v0, -0x75

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 388
    .line 389
    .line 390
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;

    .line 391
    .line 392
    iget v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;->code:I

    .line 393
    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;->domain:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAd$FlutterAdError;->message:Ljava/lang/String;

    .line 407
    .line 408
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    return-void

    .line 412
    :cond_8
    instance-of v1, p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 413
    .line 414
    if-eqz v1, :cond_b

    .line 415
    .line 416
    const/16 v1, -0x79

    .line 417
    .line 418
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 419
    .line 420
    .line 421
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 422
    .line 423
    sget-object v1, Lio/flutter/plugins/googlemobileads/AdMessageCodec$1;->$SwitchMap$io$flutter$plugins$googlemobileads$FlutterAdapterStatus$AdapterInitializationState:[I

    .line 424
    .line 425
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    aget v1, v1, v2

    .line 430
    .line 431
    if-eq v1, v0, :cond_a

    .line 432
    .line 433
    const/4 v2, 0x2

    .line 434
    if-ne v1, v2, :cond_9

    .line 435
    .line 436
    const-string p2, "ready"

    .line 437
    .line 438
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_9
    const-string p1, "Unable to handle state: %s"

    .line 443
    .line 444
    new-array v0, v0, [Ljava/lang/Object;

    .line 445
    .line 446
    const/4 v1, 0x0

    .line 447
    aput-object p2, v0, v1

    .line 448
    .line 449
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p1

    .line 453
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 454
    .line 455
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    throw p2

    .line 459
    :cond_a
    const-string p2, "notReady"

    .line 460
    .line 461
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_b
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;

    .line 466
    .line 467
    if-eqz v0, :cond_c

    .line 468
    .line 469
    const/16 v0, -0x78

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    .line 473
    .line 474
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;

    .line 475
    .line 476
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;->state:Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus$AdapterInitializationState;

    .line 477
    .line 478
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;->description:Ljava/lang/String;

    .line 482
    .line 483
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterAdapterStatus;->latency:Ljava/lang/Number;

    .line 487
    .line 488
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :cond_c
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;

    .line 493
    .line 494
    if-eqz v0, :cond_d

    .line 495
    .line 496
    const/16 v0, -0x77

    .line 497
    .line 498
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    .line 500
    .line 501
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;

    .line 502
    .line 503
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterInitializationStatus;->adapterStatuses:Ljava/util/Map;

    .line 504
    .line 505
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    return-void

    .line 509
    :cond_d
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;

    .line 510
    .line 511
    if-eqz v0, :cond_e

    .line 512
    .line 513
    const/16 v0, -0x76

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 516
    .line 517
    .line 518
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;

    .line 519
    .line 520
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;->getUserId()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/FlutterServerSideVerificationOptions;->getCustomData()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p2

    .line 531
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 532
    .line 533
    .line 534
    return-void

    .line 535
    :cond_e
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 536
    .line 537
    if-eqz v0, :cond_f

    .line 538
    .line 539
    const/16 v0, -0x70

    .line 540
    .line 541
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    .line 543
    .line 544
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;

    .line 545
    .line 546
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->adChoicesPlacement:Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->mediaAspectRatio:Ljava/lang/Integer;

    .line 552
    .line 553
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->videoOptions:Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;

    .line 557
    .line 558
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->requestCustomMuteThisAd:Ljava/lang/Boolean;

    .line 562
    .line 563
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->shouldRequestMultipleImages:Ljava/lang/Boolean;

    .line 567
    .line 568
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterNativeAdOptions;->shouldReturnUrlsForImageAssets:Ljava/lang/Boolean;

    .line 572
    .line 573
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 574
    .line 575
    .line 576
    return-void

    .line 577
    :cond_f
    instance-of v0, p2, Lcom/google/android/gms/ads/RequestConfiguration;

    .line 578
    .line 579
    if-eqz v0, :cond_10

    .line 580
    .line 581
    const/16 v0, -0x6c

    .line 582
    .line 583
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 584
    .line 585
    .line 586
    check-cast p2, Lcom/google/android/gms/ads/RequestConfiguration;

    .line 587
    .line 588
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getMaxAdContentRating()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTestDeviceIds()Ljava/util/List;

    .line 618
    .line 619
    .line 620
    move-result-object p2

    .line 621
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 622
    .line 623
    .line 624
    return-void

    .line 625
    :cond_10
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;

    .line 626
    .line 627
    if-eqz v0, :cond_11

    .line 628
    .line 629
    const/16 v0, -0x6f

    .line 630
    .line 631
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 632
    .line 633
    .line 634
    check-cast p2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;

    .line 635
    .line 636
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;->clickToExpandRequested:Ljava/lang/Boolean;

    .line 637
    .line 638
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    iget-object v0, p2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;->customControlsRequested:Ljava/lang/Boolean;

    .line 642
    .line 643
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    iget-object p2, p2, Lio/flutter/plugins/googlemobileads/FlutterVideoOptions;->startMuted:Ljava/lang/Boolean;

    .line 647
    .line 648
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    return-void

    .line 652
    :cond_11
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 653
    .line 654
    if-eqz v0, :cond_12

    .line 655
    .line 656
    const/16 v0, -0x6b

    .line 657
    .line 658
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 659
    .line 660
    .line 661
    check-cast p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;

    .line 662
    .line 663
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getTemplateType()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getMainBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getCallToActionStyle()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getPrimaryTextStyle()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getSecondaryTextStyle()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateStyle;->getTertiaryTextStyle()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 699
    .line 700
    .line 701
    move-result-object p2

    .line 702
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 703
    .line 704
    .line 705
    return-void

    .line 706
    :cond_12
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;

    .line 707
    .line 708
    if-eqz v0, :cond_13

    .line 709
    .line 710
    const/16 v0, -0x69

    .line 711
    .line 712
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 713
    .line 714
    .line 715
    check-cast p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;

    .line 716
    .line 717
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 718
    .line 719
    .line 720
    move-result p2

    .line 721
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    .line 723
    .line 724
    move-result-object p2

    .line 725
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :cond_13
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 730
    .line 731
    if-eqz v0, :cond_14

    .line 732
    .line 733
    const/16 v0, -0x68

    .line 734
    .line 735
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 736
    .line 737
    .line 738
    check-cast p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateType;

    .line 739
    .line 740
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 741
    .line 742
    .line 743
    move-result p2

    .line 744
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 745
    .line 746
    .line 747
    move-result-object p2

    .line 748
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    return-void

    .line 752
    :cond_14
    instance-of v0, p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 753
    .line 754
    if-eqz v0, :cond_15

    .line 755
    .line 756
    const/16 v0, -0x6a

    .line 757
    .line 758
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 759
    .line 760
    .line 761
    check-cast p2, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;

    .line 762
    .line 763
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;->getTextColor()Landroid/graphics/drawable/ColorDrawable;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;->getBackgroundColor()Landroid/graphics/drawable/ColorDrawable;

    .line 771
    .line 772
    .line 773
    move-result-object v0

    .line 774
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;->getFontStyle()Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateFontStyle;

    .line 778
    .line 779
    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual {p2}, Lio/flutter/plugins/googlemobileads/nativetemplates/FlutterNativeTemplateTextStyle;->getSize()Ljava/lang/Float;

    .line 785
    .line 786
    .line 787
    move-result-object p2

    .line 788
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 789
    .line 790
    .line 791
    return-void

    .line 792
    :cond_15
    instance-of v0, p2, Landroid/graphics/drawable/ColorDrawable;

    .line 793
    .line 794
    if-eqz v0, :cond_16

    .line 795
    .line 796
    const/16 v0, -0x67

    .line 797
    .line 798
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 799
    .line 800
    .line 801
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    .line 802
    .line 803
    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 804
    .line 805
    .line 806
    move-result p2

    .line 807
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 816
    .line 817
    .line 818
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 827
    .line 828
    .line 829
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 834
    .line 835
    .line 836
    move-result-object v0

    .line 837
    invoke-virtual {p0, p1, v0}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 841
    .line 842
    .line 843
    move-result p2

    .line 844
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 845
    .line 846
    .line 847
    move-result-object p2

    .line 848
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/googlemobileads/AdMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    .line 850
    .line 851
    return-void

    .line 852
    :catchall_0
    move-exception p1

    .line 853
    throw p1

    .line 854
    :cond_16
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    return-void
.end method
