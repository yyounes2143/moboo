.class public Lcom/sensorsdata/analytics/android/sdk/push/utils/PushUtils;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getJPushSDKName(B)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Jpush"

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-object v0

    .line 7
    :pswitch_1
    const-string p0, "fcm"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_2
    const-string p0, "Asus"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_3
    const-string p0, "vivo"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_4
    const-string p0, "OPPO"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_5
    const-string p0, "Meizu"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_6
    const-string p0, "HUAWEI"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_7
    const-string p0, "Xiaomi"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_8
    return-object v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
