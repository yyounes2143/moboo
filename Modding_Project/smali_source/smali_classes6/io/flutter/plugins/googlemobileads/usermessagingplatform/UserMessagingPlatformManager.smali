.class public Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static final INTERNAL_ERROR_CODE:Ljava/lang/String; = "0"

.field private static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "plugins.flutter.io/google_mobile_ads/ump"


# instance fields
.field private activity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private consentInformation:Lcom/google/android/ump/ConsentInformation;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private final userMessagingCodec:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;

    invoke-direct {v0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->userMessagingCodec:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;

    .line 3
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    new-instance v2, Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v2, v0}, Lio/flutter/plugin/common/StandardMethodCodec;-><init>(Lio/flutter/plugin/common/StandardMessageCodec;)V

    const-string v0, "plugins.flutter.io/google_mobile_ads/ump"

    invoke-direct {v1, p1, v0, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 4
    invoke-virtual {v1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Landroid/content/Context;Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p3, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->userMessagingCodec:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;

    .line 8
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    new-instance v1, Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p3}, Lio/flutter/plugin/common/StandardMethodCodec;-><init>(Lio/flutter/plugin/common/StandardMessageCodec;)V

    const-string p3, "plugins.flutter.io/google_mobile_ads/ump"

    invoke-direct {v0, p1, p3, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 9
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 10
    iput-object p2, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Lcom/google/android/ump/FormError;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;)Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->userMessagingCodec:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;

    .line 2
    .line 3
    return-object p0
.end method

.method private getConsentInformation()Lcom/google/android/ump/ConsentInformation;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 10
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ConsentForm#show"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    iget-object v4, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string v5, "consentForm"

    .line 12
    .line 13
    const-string v6, "0"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, -0x1

    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    sparse-switch v9, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :sswitch_0
    const-string v9, "ConsentInformation#getConsentStatus"

    .line 27
    .line 28
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    const/16 v8, 0xa

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :sswitch_1
    const-string v9, "ConsentInformation#canRequestAds"

    .line 41
    .line 42
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_1
    const/16 v8, 0x9

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :sswitch_2
    const-string v9, "ConsentInformation#getPrivacyOptionsRequirementStatus"

    .line 55
    .line 56
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :cond_2
    const/16 v8, 0x8

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :sswitch_3
    const-string v9, "UserMessagingPlatform#loadConsentForm"

    .line 69
    .line 70
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v8, 0x7

    .line 78
    goto :goto_0

    .line 79
    :sswitch_4
    const-string v9, "ConsentInformation#isConsentFormAvailable"

    .line 80
    .line 81
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    const/4 v8, 0x6

    .line 89
    goto :goto_0

    .line 90
    :sswitch_5
    const-string v9, "UserMessagingPlatform#showPrivacyOptionsForm"

    .line 91
    .line 92
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_5

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/4 v8, 0x5

    .line 100
    goto :goto_0

    .line 101
    :sswitch_6
    const-string v9, "ConsentForm#dispose"

    .line 102
    .line 103
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/4 v8, 0x4

    .line 111
    goto :goto_0

    .line 112
    :sswitch_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_7

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_7
    const/4 v8, 0x3

    .line 120
    goto :goto_0

    .line 121
    :sswitch_8
    const-string v9, "ConsentInformation#requestConsentInfoUpdate"

    .line 122
    .line 123
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    move v8, v1

    .line 131
    goto :goto_0

    .line 132
    :sswitch_9
    const-string v9, "UserMessagingPlatform#loadAndShowConsentFormIfRequired"

    .line 133
    .line 134
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-nez v4, :cond_9

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_9
    move v8, v2

    .line 142
    goto :goto_0

    .line 143
    :sswitch_a
    const-string v9, "ConsentInformation#reset"

    .line 144
    .line 145
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-nez v4, :cond_a

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_a
    move v8, v3

    .line 153
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 154
    .line 155
    .line 156
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :pswitch_0
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :pswitch_1
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_2
    sget-object p1, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$6;->$SwitchMap$com$google$android$ump$ConsentInformation$PrivacyOptionsRequirementStatus:[I

    .line 193
    .line 194
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getPrivacyOptionsRequirementStatus()Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    aget p1, p1, v0

    .line 207
    .line 208
    if-eq p1, v2, :cond_c

    .line 209
    .line 210
    if-eq p1, v1, :cond_b

    .line 211
    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    return-void

    .line 220
    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :cond_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    return-void

    .line 236
    :pswitch_3
    iget-object p1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->context:Landroid/content/Context;

    .line 237
    .line 238
    new-instance v0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$3;

    .line 239
    .line 240
    invoke-direct {v0, p0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$3;-><init>(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$4;

    .line 244
    .line 245
    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$4;-><init>(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1, v0, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_4
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->isConsentFormAvailable()Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :pswitch_5
    iget-object p1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 269
    .line 270
    if-nez p1, :cond_d

    .line 271
    .line 272
    const-string p1, "UserMessagingPlatform#showPrivacyOptionsForm called before plugin has been registered to an activity."

    .line 273
    .line 274
    invoke-interface {p2, v6, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :cond_d
    new-instance v0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 279
    .line 280
    invoke-direct {v0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 281
    .line 282
    .line 283
    invoke-static {p1, v0}, Lcom/google/android/ump/UserMessagingPlatform;->showPrivacyOptionsForm(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :pswitch_6
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Lcom/google/android/ump/ConsentForm;

    .line 292
    .line 293
    if-nez p1, :cond_e

    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_e
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->userMessagingCodec:Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;

    .line 297
    .line 298
    invoke-virtual {v0, p1}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingCodec;->disposeConsentForm(Lcom/google/android/ump/ConsentForm;)V

    .line 299
    .line 300
    .line 301
    :goto_1
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_7
    invoke-virtual {p1, v5}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Lcom/google/android/ump/ConsentForm;

    .line 310
    .line 311
    if-nez p1, :cond_f

    .line 312
    .line 313
    invoke-interface {p2, v6, v0, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    return-void

    .line 317
    :cond_f
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 318
    .line 319
    new-instance v1, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$5;

    .line 320
    .line 321
    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$5;-><init>(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 322
    .line 323
    .line 324
    invoke-interface {p1, v0, v1}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_8
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 329
    .line 330
    if-nez v0, :cond_10

    .line 331
    .line 332
    const-string p1, "ConsentInformation#requestConsentInfoUpdate called before plugin has been registered to an activity."

    .line 333
    .line 334
    invoke-interface {p2, v6, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :cond_10
    const-string v0, "params"

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    check-cast p1, Lio/flutter/plugins/googlemobileads/usermessagingplatform/ConsentRequestParametersWrapper;

    .line 345
    .line 346
    if-nez p1, :cond_11

    .line 347
    .line 348
    new-instance p1, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 349
    .line 350
    invoke-direct {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    goto :goto_2

    .line 358
    :cond_11
    iget-object v0, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 359
    .line 360
    invoke-virtual {p1, v0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/ConsentRequestParametersWrapper;->getAsConsentRequestParameters(Landroid/content/Context;)Lcom/google/android/ump/ConsentRequestParameters;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    :goto_2
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    iget-object v1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 369
    .line 370
    new-instance v2, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$1;

    .line 371
    .line 372
    invoke-direct {v2, p0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$1;-><init>(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 373
    .line 374
    .line 375
    new-instance v3, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$2;

    .line 376
    .line 377
    invoke-direct {v3, p0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager$2;-><init>(Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 378
    .line 379
    .line 380
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :pswitch_9
    iget-object p1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 385
    .line 386
    if-nez p1, :cond_12

    .line 387
    .line 388
    const-string p1, "UserMessagingPlatform#loadAndShowConsentFormIfRequired called before plugin has been registered to an activity."

    .line 389
    .line 390
    invoke-interface {p2, v6, p1, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :cond_12
    new-instance v0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 395
    .line 396
    invoke-direct {v0, p2}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 397
    .line 398
    .line 399
    invoke-static {p1, v0}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_a
    invoke-direct {p0}, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->getConsentInformation()Lcom/google/android/ump/ConsentInformation;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->reset()V

    .line 408
    .line 409
    .line 410
    invoke-interface {p2, v7}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    return-void

    .line 414
    nop

    .line 415
    :sswitch_data_0
    .sparse-switch
        -0x7b4ec5a2 -> :sswitch_a
        -0x767ae7dd -> :sswitch_9
        -0x4e173d6d -> :sswitch_8
        -0x39e27f7e -> :sswitch_7
        -0x34642986 -> :sswitch_6
        -0x2914eed2 -> :sswitch_5
        -0x22e9907a -> :sswitch_4
        -0x1da6545f -> :sswitch_3
        -0x12779e26 -> :sswitch_2
        0x1e1845a0 -> :sswitch_1
        0x27a4b087 -> :sswitch_0
    .end sparse-switch

    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/googlemobileads/usermessagingplatform/UserMessagingPlatformManager;->activity:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method
