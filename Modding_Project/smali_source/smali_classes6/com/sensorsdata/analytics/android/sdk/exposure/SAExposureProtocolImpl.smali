.class public Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/core/mediator/protocol/SAModuleProtocol;


# instance fields
.field private mEnable:Z

.field private mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    .line 6
    .line 7
    return-void
.end method

.method private addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private init(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {p1, v3, v0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;-><init>(FDZ)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;-><init>(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 18
    .line 19
    return-void
.end method

.method private removeExposureView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "sensors_analytics_module_exposure"

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    return v0
.end method

.method public install(Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->isDisableSDK()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->setModuleState(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/core/SAContextManager;->getInternalConfigs()Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/InternalConfigOptions;->saConfigOptions:Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->init(Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public varargs invokeModuleFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, -0x1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    sparse-switch v5, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v5, "setExposureIdentifier"

    .line 18
    .line 19
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x3

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v5, "updateExposureProperties"

    .line 29
    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v0

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v5, "removeExposureView"

    .line 40
    .line 41
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v4, v2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v5, "addExposureView"

    .line 51
    .line 52
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v4, v3

    .line 60
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :pswitch_0
    aget-object p1, p2, v3

    .line 65
    .line 66
    check-cast p1, Landroid/view/View;

    .line 67
    .line 68
    aget-object p2, p2, v2

    .line 69
    .line 70
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->setExposureIdentifier(Landroid/view/View;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_1
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mExposedProcess:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    .line 77
    .line 78
    aget-object v0, p2, v3

    .line 79
    .line 80
    check-cast v0, Landroid/view/View;

    .line 81
    .line 82
    aget-object p2, p2, v2

    .line 83
    .line 84
    check-cast p2, Lorg/json/JSONObject;

    .line 85
    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->updateExposureView(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_2
    array-length p1, p2

    .line 91
    if-ne p1, v0, :cond_4

    .line 92
    .line 93
    aget-object p1, p2, v3

    .line 94
    .line 95
    check-cast p1, Landroid/view/View;

    .line 96
    .line 97
    aget-object p2, p2, v2

    .line 98
    .line 99
    check-cast p2, Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    aget-object p1, p2, v3

    .line 106
    .line 107
    check-cast p1, Landroid/view/View;

    .line 108
    .line 109
    invoke-direct {p0, p1, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->removeExposureView(Landroid/view/View;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :pswitch_3
    aget-object p1, p2, v3

    .line 114
    .line 115
    check-cast p1, Landroid/view/View;

    .line 116
    .line 117
    aget-object p2, p2, v2

    .line 118
    .line 119
    check-cast p2, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    .line 120
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->addExposureView(Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-object v1

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x1978338d -> :sswitch_3
        0x3aa9f6f0 -> :sswitch_2
        0x62883e43 -> :sswitch_1
        0x67de8d12 -> :sswitch_0
    .end sparse-switch

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method public setModuleState(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposureProtocolImpl;->mEnable:Z

    .line 6
    .line 7
    :cond_0
    return-void
.end method
