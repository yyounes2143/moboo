.class public final Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.OAIDFactory"

.field private static ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


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

.method public static create(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    instance-of v0, p0, Landroid/app/Application;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->createManufacturerImpl(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;->isSupported()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "Manufacturer interface has been found: "

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v0, "SA.OAIDFactory"

    .line 58
    .line 59
    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 63
    .line 64
    return-object p0

    .line 65
    :cond_2
    new-instance p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/DefaultImpl;

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/DefaultImpl;-><init>()V

    .line 68
    .line 69
    .line 70
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->ioaid:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    .line 71
    .line 72
    return-object p0
.end method

.method private static createManufacturerImpl(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;
    .locals 1

    .line 1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isHuawei()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_e

    .line 6
    .line 7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isEmui()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isXiaomi()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_d

    .line 20
    .line 21
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMiui()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_d

    .line 26
    .line 27
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isBlackShark()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isVivo()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/VivoImpl;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isOppo()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_c

    .line 52
    .line 53
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isOnePlus()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMeizu()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;

    .line 67
    .line 68
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/MeizuImpl;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isSamsung()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/SamsungImpl;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_5
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isNubia()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/NubiaImpl;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_6
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isASUS()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;

    .line 103
    .line 104
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_7
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isLenovo()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_b

    .line 113
    .line 114
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isMotolora()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isZTE()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_9

    .line 126
    .line 127
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;

    .line 128
    .line 129
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/ZTEImpl;-><init>(Landroid/content/Context;)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_9
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/OAIDRom;->isCoolpad(Landroid/content/Context;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/CoolpadImpl;-><init>(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    return-object v0

    .line 145
    :cond_a
    const/4 p0, 0x0

    .line 146
    return-object p0

    .line 147
    :cond_b
    :goto_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_c
    :goto_1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;-><init>(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    return-object v0

    .line 159
    :cond_d
    :goto_2
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/XiaomiImpl;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_e
    :goto_3
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;

    .line 166
    .line 167
    invoke-direct {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    return-object v0
.end method
