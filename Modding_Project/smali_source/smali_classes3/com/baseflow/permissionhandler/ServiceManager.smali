.class final Lcom/baseflow/permissionhandler/ServiceManager;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;
    }
.end annotation


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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "location_mode"

    .line 7
    .line 8
    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return v0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const-class v0, Landroid/location/LocationManager;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/location/LocationManager;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {p1}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/location/LocationManager;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-static {p1}, Lcom/baseflow/permissionhandler/ServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "bluetooth"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/bluetooth/BluetoothManager;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.CALL"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "tel:123123"

    .line 9
    .line 10
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v2, 0x21

    .line 20
    .line 21
    if-lt v1, v2, :cond_0

    .line 22
    .line 23
    const-wide/16 v1, 0x0

    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p1, v0, v1}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILandroid/content/Context;Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, "PermissionHandler.ServiceManager"

    .line 4
    .line 5
    const-string p2, "Android context cannot be null."

    .line 6
    .line 7
    invoke-interface {p4, p1, p2}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p4, 0x3

    .line 12
    if-eq p1, p4, :cond_a

    .line 13
    .line 14
    const/4 p4, 0x4

    .line 15
    if-eq p1, p4, :cond_a

    .line 16
    .line 17
    const/4 p4, 0x5

    .line 18
    if-ne p1, p4, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v0, 0x15

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const/16 v0, 0x8

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    const/4 v2, 0x2

    .line 37
    if-ne p1, v0, :cond_8

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "android.hardware.telephony"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const-string v0, "phone"

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 62
    .line 63
    if-eqz p2, :cond_7

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0, p1}, Lcom/baseflow/permissionhandler/ServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_5
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eq p1, p4, :cond_6

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_6
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_7
    :goto_0
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_8
    const/16 p2, 0x10

    .line 106
    .line 107
    if-ne p1, p2, :cond_9

    .line 108
    .line 109
    invoke-interface {p3, v1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_9
    invoke-interface {p3, v2}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_a
    :goto_1
    invoke-virtual {p0, p2}, Lcom/baseflow/permissionhandler/ServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-interface {p3, p1}, Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
