.class final Lcom/baseflow/permissionhandler/PermissionManager;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;,
        Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "PermissionHandler.PermissionManager"

    .line 6
    .line 7
    const-string p2, "Unable to detect current Android Activity."

    .line 8
    .line 9
    invoke-interface {p3, p1, p2}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {v0, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p3, 0x0

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p2, p3}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {p2, p3}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$ShouldShowRequestPermissionRationaleSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;Lcom/baseflow/permissionhandler/ErrorCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;",
            "Lcom/baseflow/permissionhandler/ErrorCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const-string v1, "PermissionHandler.PermissionManager"

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "A request for permissions is already running, please wait for it to finish before doing another request (note that you can request multiple permissions at the same time)."

    .line 8
    .line 9
    invoke-interface {p3, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p1, "Unable to detect current Android Activity."

    .line 18
    .line 19
    invoke-interface {p3, v1, p1}, Lcom/baseflow/permissionhandler/ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 24
    .line 25
    new-instance p2, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 34
    .line 35
    new-instance p3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0x18

    .line 49
    .line 50
    if-eqz v0, :cond_10

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {p0, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-ne v2, v3, :cond_3

    .line 68
    .line 69
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-static {v2, v3}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x2

    .line 98
    const/16 v4, 0x16

    .line 99
    .line 100
    const/16 v5, 0x1e

    .line 101
    .line 102
    if-eqz v2, :cond_e

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_4

    .line 109
    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const/16 v8, 0x10

    .line 119
    .line 120
    if-ne v7, v8, :cond_5

    .line 121
    .line 122
    const-string v0, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 123
    .line 124
    const/16 v1, 0xd1

    .line 125
    .line 126
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    if-lt v6, v5, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    if-ne v5, v4, :cond_6

    .line 137
    .line 138
    const-string v0, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 139
    .line 140
    const/16 v1, 0xd2

    .line 141
    .line 142
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    const/16 v5, 0x17

    .line 151
    .line 152
    if-ne v4, v5, :cond_7

    .line 153
    .line 154
    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 155
    .line 156
    const/16 v1, 0xd3

    .line 157
    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_7
    const/16 v4, 0x1a

    .line 163
    .line 164
    if-lt v6, v4, :cond_8

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-ne v4, v1, :cond_8

    .line 171
    .line 172
    const-string v0, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 173
    .line 174
    const/16 v1, 0xd4

    .line 175
    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    const/16 v4, 0x1b

    .line 186
    .line 187
    if-ne v1, v4, :cond_9

    .line 188
    .line 189
    const-string v0, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 190
    .line 191
    const/16 v1, 0xd5

    .line 192
    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_9
    const/16 v1, 0x1f

    .line 199
    .line 200
    if-lt v6, v1, :cond_a

    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const/16 v4, 0x22

    .line 207
    .line 208
    if-ne v1, v4, :cond_a

    .line 209
    .line 210
    const-string v0, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    .line 211
    .line 212
    const/16 v1, 0xd6

    .line 213
    .line 214
    invoke-virtual {p0, v0, v1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    const/16 v4, 0x25

    .line 224
    .line 225
    if-eq v1, v4, :cond_c

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v1

    .line 231
    if-nez v1, :cond_b

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_b
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 235
    .line 236
    .line 237
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 238
    .line 239
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    add-int/2addr v0, v1

    .line 244
    iput v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_d

    .line 253
    .line 254
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 255
    .line 256
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    const-string v0, "android.permission.READ_CALENDAR"

    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    iget v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 265
    .line 266
    add-int/2addr v0, v3

    .line 267
    iput v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_d
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 272
    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_e
    :goto_2
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 283
    .line 284
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_2

    .line 289
    .line 290
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 291
    .line 292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-ne v1, v4, :cond_f

    .line 304
    .line 305
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 306
    .line 307
    if-ge v1, v5, :cond_f

    .line 308
    .line 309
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 310
    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :cond_f
    iget-object v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 321
    .line 322
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_10
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-lez p1, :cond_11

    .line 336
    .line 337
    new-array p1, p2, [Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    check-cast p1, [Ljava/lang/String;

    .line 344
    .line 345
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 346
    .line 347
    invoke-static {p2, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    :cond_11
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 351
    .line 352
    if-eqz p1, :cond_12

    .line 353
    .line 354
    iget p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 355
    .line 356
    if-nez p2, :cond_12

    .line 357
    .line 358
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 359
    .line 360
    invoke-interface {p1, p2}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)V

    .line 361
    .line 362
    .line 363
    :cond_12
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.settings.NOTIFICATION_POLICY_ACCESS_SETTINGS"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "package:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 50
    .line 51
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 55
    .line 56
    add-int/lit8 p1, p1, 0x1

    .line 57
    .line 58
    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 59
    .line 60
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x25

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v3, "android.permission.WRITE_CALENDAR"

    .line 14
    .line 15
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    move v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v3, v1

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v4, "android.permission.READ_CALENDAR"

    .line 27
    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v1

    .line 37
    :goto_1
    if-eqz v3, :cond_2

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    return v2

    .line 42
    :cond_2
    return v1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I
    .locals 13

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x15

    .line 11
    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    const/16 v0, 0x1f

    .line 20
    .line 21
    const/16 v1, 0x1e

    .line 22
    .line 23
    if-eq p1, v1, :cond_2

    .line 24
    .line 25
    const/16 v2, 0x1c

    .line 26
    .line 27
    if-eq p1, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x1d

    .line 30
    .line 31
    if-ne p1, v2, :cond_3

    .line 32
    .line 33
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    if-ge v2, v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    return p1

    .line 42
    :cond_3
    const/16 v2, 0x25

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eq p1, v2, :cond_4

    .line 46
    .line 47
    if-nez p1, :cond_5

    .line 48
    .line 49
    :cond_4
    invoke-virtual {p0}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_5

    .line 54
    .line 55
    return v3

    .line 56
    :cond_5
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/4 v4, 0x1

    .line 63
    if-nez v2, :cond_6

    .line 64
    .line 65
    return v4

    .line 66
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x2

    .line 71
    const/16 v7, 0x16

    .line 72
    .line 73
    if-nez v5, :cond_8

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    if-ne p1, v7, :cond_7

    .line 79
    .line 80
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    if-ge p1, v1, :cond_7

    .line 83
    .line 84
    return v6

    .line 85
    :cond_7
    return v3

    .line 86
    :cond_8
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 93
    .line 94
    const/16 v8, 0x17

    .line 95
    .line 96
    if-lt v5, v8, :cond_19

    .line 97
    .line 98
    new-instance v5, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_9
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_18

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    check-cast v9, Ljava/lang/String;

    .line 118
    .line 119
    const/16 v10, 0x10

    .line 120
    .line 121
    if-ne p1, v10, :cond_b

    .line 122
    .line 123
    iget-object v9, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 124
    .line 125
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 130
    .line 131
    const-string v11, "power"

    .line 132
    .line 133
    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    check-cast v10, Landroid/os/PowerManager;

    .line 138
    .line 139
    if-eqz v10, :cond_a

    .line 140
    .line 141
    invoke-virtual {v10, v9}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_a

    .line 146
    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v9

    .line 159
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_b
    if-ne p1, v7, :cond_d

    .line 164
    .line 165
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    if-ge v9, v1, :cond_c

    .line 168
    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    :cond_c
    invoke-static {}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_d
    if-ne p1, v8, :cond_e

    .line 189
    .line 190
    iget-object v9, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 191
    .line 192
    invoke-static {v9}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_e
    const/16 v10, 0x18

    .line 205
    .line 206
    if-ne p1, v10, :cond_f

    .line 207
    .line 208
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 209
    .line 210
    const/16 v10, 0x1a

    .line 211
    .line 212
    if-lt v9, v10, :cond_9

    .line 213
    .line 214
    iget-object v9, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    invoke-static {v9}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_f
    const/16 v10, 0x1b

    .line 233
    .line 234
    if-ne p1, v10, :cond_10

    .line 235
    .line 236
    iget-object v9, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 237
    .line 238
    const-string v10, "notification"

    .line 239
    .line 240
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    check-cast v9, Landroid/app/NotificationManager;

    .line 245
    .line 246
    invoke-virtual {v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_10
    const/16 v10, 0x22

    .line 260
    .line 261
    if-ne p1, v10, :cond_12

    .line 262
    .line 263
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 264
    .line 265
    if-lt v9, v0, :cond_11

    .line 266
    .line 267
    iget-object v9, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 268
    .line 269
    const-string v10, "alarm"

    .line 270
    .line 271
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v9

    .line 275
    check-cast v9, Landroid/app/AlarmManager;

    .line 276
    .line 277
    invoke-static {v9}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/AlarmManager;)Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    .line 283
    .line 284
    move-result-object v9

    .line 285
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_12
    const/16 v11, 0x9

    .line 300
    .line 301
    if-eq p1, v11, :cond_14

    .line 302
    .line 303
    const/16 v11, 0x20

    .line 304
    .line 305
    if-ne p1, v11, :cond_13

    .line 306
    .line 307
    goto :goto_1

    .line 308
    :cond_13
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 309
    .line 310
    invoke-static {v10, v9}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v10

    .line 314
    if-eqz v10, :cond_9

    .line 315
    .line 316
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 317
    .line 318
    invoke-static {v10, v9}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_14
    :goto_1
    iget-object v11, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 332
    .line 333
    invoke-static {v11, v9}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    move-result v11

    .line 337
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 338
    .line 339
    if-lt v12, v10, :cond_15

    .line 340
    .line 341
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 342
    .line 343
    const-string v12, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    .line 344
    .line 345
    invoke-static {v10, v12}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 346
    .line 347
    .line 348
    move-result v10

    .line 349
    goto :goto_2

    .line 350
    :cond_15
    move v10, v11

    .line 351
    :goto_2
    if-nez v10, :cond_16

    .line 352
    .line 353
    const/4 v10, -0x1

    .line 354
    if-ne v11, v10, :cond_16

    .line 355
    .line 356
    const/4 v9, 0x3

    .line 357
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v9

    .line 361
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_16
    if-nez v11, :cond_17

    .line 367
    .line 368
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    goto/16 :goto_0

    .line 376
    .line 377
    :cond_17
    iget-object v10, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 378
    .line 379
    invoke-static {v10, v9}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result v9

    .line 383
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_18
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-nez p1, :cond_19

    .line 397
    .line 398
    invoke-static {v5}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Collection;)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 403
    .line 404
    .line 405
    move-result p1

    .line 406
    return p1

    .line 407
    :cond_19
    return v4
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ILcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$CheckPermissionsSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 24
    .line 25
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v2

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 2
    .line 3
    const/4 p3, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return p3

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput p3, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    return p3

    .line 14
    :cond_1
    const/16 v0, 0xd1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    if-ne p1, v0, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 26
    .line 27
    const-string v0, "power"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/PowerManager;

    .line 34
    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    move p3, v1

    .line 44
    :cond_2
    const/16 p1, 0x10

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_3
    const/16 v0, 0xd2

    .line 48
    .line 49
    if-ne p1, v0, :cond_5

    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 p2, 0x1e

    .line 54
    .line 55
    if-lt p1, p2, :cond_4

    .line 56
    .line 57
    invoke-static {}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    const/16 p1, 0x16

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    return p3

    .line 65
    :cond_5
    const/16 v0, 0xd3

    .line 66
    .line 67
    if-ne p1, v0, :cond_6

    .line 68
    .line 69
    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    const/16 p1, 0x17

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    const/16 v0, 0xd4

    .line 77
    .line 78
    if-ne p1, v0, :cond_8

    .line 79
    .line 80
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 81
    .line 82
    const/16 v0, 0x1a

    .line 83
    .line 84
    if-lt p1, v0, :cond_7

    .line 85
    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/pm/PackageManager;)Z

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    const/16 p1, 0x18

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_7
    return p3

    .line 98
    :cond_8
    const/16 v0, 0xd5

    .line 99
    .line 100
    if-ne p1, v0, :cond_9

    .line 101
    .line 102
    const-string p1, "notification"

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/app/NotificationManager;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    const/16 p1, 0x1b

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_9
    const/16 v0, 0xd6

    .line 118
    .line 119
    if-ne p1, v0, :cond_c

    .line 120
    .line 121
    const-string p1, "alarm"

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Landroid/app/AlarmManager;

    .line 128
    .line 129
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    .line 131
    const/16 p3, 0x1f

    .line 132
    .line 133
    if-lt p2, p3, :cond_a

    .line 134
    .line 135
    invoke-static {p1}, Lcom/baseflow/permissionhandler/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/AlarmManager;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    move p3, p1

    .line 140
    goto :goto_0

    .line 141
    :cond_a
    move p3, v1

    .line 142
    :goto_0
    const/16 p1, 0x22

    .line 143
    .line 144
    :goto_1
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 158
    .line 159
    sub-int/2addr p1, v1

    .line 160
    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 161
    .line 162
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 163
    .line 164
    if-eqz p2, :cond_b

    .line 165
    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 169
    .line 170
    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    :cond_b
    return v1

    .line 174
    :cond_c
    return p3
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 7
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    array-length p1, p2

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    array-length p1, p3

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iput v1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v3, "android.permission.READ_CALENDAR"

    .line 34
    .line 35
    if-ltz v2, :cond_3

    .line 36
    .line 37
    aget v2, p3, v2

    .line 38
    .line 39
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 40
    .line 41
    invoke-static {v4, v0, v2}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 46
    .line 47
    const/16 v5, 0x24

    .line 48
    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-ltz p1, :cond_3

    .line 65
    .line 66
    aget p1, p3, p1

    .line 67
    .line 68
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 69
    .line 70
    invoke-static {v4, v3, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 90
    .line 91
    const/16 v4, 0x25

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 101
    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_0
    array-length p1, p2

    .line 110
    if-ge v1, p1, :cond_10

    .line 111
    .line 112
    aget-object p1, p2, v1

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_f

    .line 119
    .line 120
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    goto/16 :goto_2

    .line 127
    .line 128
    :cond_4
    invoke-static {p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    const/16 v4, 0x14

    .line 133
    .line 134
    if-ne v2, v4, :cond_5

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :cond_5
    aget v4, p3, v1

    .line 139
    .line 140
    const/16 v5, 0x8

    .line 141
    .line 142
    if-ne v2, v5, :cond_6

    .line 143
    .line 144
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 145
    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/Integer;

    .line 155
    .line 156
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 157
    .line 158
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v2, p1}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 171
    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    goto/16 :goto_2

    .line 180
    .line 181
    :cond_6
    const/4 v5, 0x7

    .line 182
    if-ne v2, v5, :cond_8

    .line 183
    .line 184
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 185
    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_7

    .line 195
    .line 196
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 197
    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 203
    .line 204
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    :cond_7
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 216
    .line 217
    const/16 v5, 0xe

    .line 218
    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-nez v2, :cond_f

    .line 228
    .line 229
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 230
    .line 231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 236
    .line 237
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :cond_8
    const/4 v5, 0x4

    .line 251
    if-ne v2, v5, :cond_9

    .line 252
    .line 253
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 254
    .line 255
    invoke-static {v2, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 260
    .line 261
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_f

    .line 270
    .line 271
    iget-object v2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 272
    .line 273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    goto/16 :goto_2

    .line 285
    .line 286
    :cond_9
    const/4 v6, 0x3

    .line 287
    if-ne v2, v6, :cond_c

    .line 288
    .line 289
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 290
    .line 291
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 296
    .line 297
    const/16 v6, 0x1d

    .line 298
    .line 299
    if-ge v4, v6, :cond_a

    .line 300
    .line 301
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 302
    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    if-nez v4, :cond_a

    .line 312
    .line 313
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 314
    .line 315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    :cond_a
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 327
    .line 328
    const/4 v5, 0x5

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    if-nez v4, :cond_b

    .line 338
    .line 339
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 340
    .line 341
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    :cond_b
    iget-object v4, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 353
    .line 354
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    goto :goto_2

    .line 366
    :cond_c
    const/16 v5, 0x9

    .line 367
    .line 368
    if-eq v2, v5, :cond_e

    .line 369
    .line 370
    const/16 v5, 0x20

    .line 371
    .line 372
    if-ne v2, v5, :cond_d

    .line 373
    .line 374
    goto :goto_1

    .line 375
    :cond_d
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 376
    .line 377
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v5

    .line 385
    if-nez v5, :cond_f

    .line 386
    .line 387
    iget-object v5, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 388
    .line 389
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    iget-object v6, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 394
    .line 395
    invoke-static {v6, p1, v4}, Lcom/baseflow/permissionhandler/PermissionUtils;->Wwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/lang/String;I)I

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 408
    .line 409
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {p0, v2}, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    :cond_f
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_10
    iget p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 429
    .line 430
    array-length p2, p3

    .line 431
    sub-int/2addr p1, p2

    .line 432
    iput p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 433
    .line 434
    iget-object p2, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;

    .line 435
    .line 436
    if-eqz p2, :cond_11

    .line 437
    .line 438
    if-nez p1, :cond_11

    .line 439
    .line 440
    iget-object p1, p0, Lcom/baseflow/permissionhandler/PermissionManager;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 441
    .line 442
    invoke-interface {p2, p1}, Lcom/baseflow/permissionhandler/PermissionManager$RequestPermissionsSuccessCallback;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/Map;)V

    .line 443
    .line 444
    .line 445
    :cond_11
    const/4 p1, 0x1

    .line 446
    return p1
.end method
