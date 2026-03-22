.class final Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/ServiceManager;

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/AppSettingsManager;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baseflow/permissionhandler/AppSettingsManager;Lcom/baseflow/permissionhandler/PermissionManager;Lcom/baseflow/permissionhandler/ServiceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/AppSettingsManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/ServiceManager;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v2, "requestPermissions"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x4

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v2, "openAppSettings"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x3

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v2, "checkPermissionStatus"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v2, "shouldShowRequestPermissionRationale"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v2, "checkServiceStatus"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v1, 0x0

    .line 69
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Ljava/util/List;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager;

    .line 83
    .line 84
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    new-instance v1, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 88
    .line 89
    invoke-direct {v1, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 93
    .line 94
    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1, v1, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    iget-object p1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/AppSettingsManager;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    new-instance v1, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 109
    .line 110
    invoke-direct {v1, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 114
    .line 115
    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0, v1, v2}, Lcom/baseflow/permissionhandler/AppSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Lcom/baseflow/permissionhandler/AppSettingsManager$OpenAppSettingsSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_2
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager;

    .line 133
    .line 134
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 138
    .line 139
    invoke-direct {v1, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, p1, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_3
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 147
    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager;

    .line 157
    .line 158
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    new-instance v1, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 162
    .line 163
    invoke-direct {v1, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 167
    .line 168
    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p1, v1, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :pswitch_4
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    iget-object v0, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/ServiceManager;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/baseflow/permissionhandler/MethodCallHandlerImpl;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 188
    .line 189
    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    new-instance v2, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 193
    .line 194
    invoke-direct {v2, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 195
    .line 196
    .line 197
    new-instance v3, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 198
    .line 199
    invoke-direct {v3, p2}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baseflow/permissionhandler/ServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILandroid/content/Context;Lcom/baseflow/permissionhandler/ServiceManager$SuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    nop

    .line 207
    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
    .end sparse-switch

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
