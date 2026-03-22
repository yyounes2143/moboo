.class public final enum Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
.super Ljava/lang/Enum;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ALL:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum DEFAULT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ITEM_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum ITEM_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_APPEND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_INCREMENT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum PROFILE_UNSET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

.field public static final enum TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;


# instance fields
.field private eventType:Ljava/lang/String;

.field private profile:Z

.field private track:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 2
    .line 3
    const/4 v4, 0x1

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "TRACK"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "track"

    .line 9
    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 14
    .line 15
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v2, "TRACK_SIGNUP"

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const-string v4, "track_signup"

    .line 23
    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_SIGNUP:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 28
    .line 29
    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    const-string v3, "TRACK_ID_BIND"

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const-string v5, "track_id_bind"

    .line 37
    .line 38
    invoke-direct/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 39
    .line 40
    .line 41
    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_BIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 42
    .line 43
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 44
    .line 45
    const/4 v7, 0x1

    .line 46
    const/4 v8, 0x0

    .line 47
    const-string v4, "TRACK_ID_UNBIND"

    .line 48
    .line 49
    const/4 v5, 0x3

    .line 50
    const-string v6, "track_id_unbind"

    .line 51
    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 53
    .line 54
    .line 55
    sput-object v3, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->TRACK_ID_UNBIND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 56
    .line 57
    new-instance v4, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    const-string v5, "PROFILE_SET"

    .line 61
    .line 62
    const/4 v6, 0x4

    .line 63
    const-string v7, "profile_set"

    .line 64
    .line 65
    invoke-direct/range {v4 .. v9}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 66
    .line 67
    .line 68
    sput-object v4, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 69
    .line 70
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x1

    .line 74
    const-string v6, "PROFILE_SET_ONCE"

    .line 75
    .line 76
    const/4 v7, 0x5

    .line 77
    const-string v8, "profile_set_once"

    .line 78
    .line 79
    invoke-direct/range {v5 .. v10}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 80
    .line 81
    .line 82
    sput-object v5, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 83
    .line 84
    new-instance v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 85
    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x1

    .line 88
    const-string v7, "PROFILE_UNSET"

    .line 89
    .line 90
    const/4 v8, 0x6

    .line 91
    const-string v9, "profile_unset"

    .line 92
    .line 93
    invoke-direct/range {v6 .. v11}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 94
    .line 95
    .line 96
    sput-object v6, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_UNSET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 97
    .line 98
    new-instance v7, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 99
    .line 100
    const/4 v11, 0x0

    .line 101
    const/4 v12, 0x1

    .line 102
    const-string v8, "PROFILE_INCREMENT"

    .line 103
    .line 104
    const/4 v9, 0x7

    .line 105
    const-string v10, "profile_increment"

    .line 106
    .line 107
    invoke-direct/range {v7 .. v12}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 108
    .line 109
    .line 110
    sput-object v7, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_INCREMENT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 111
    .line 112
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const/4 v13, 0x1

    .line 116
    const-string v9, "PROFILE_APPEND"

    .line 117
    .line 118
    const/16 v10, 0x8

    .line 119
    .line 120
    const-string v11, "profile_append"

    .line 121
    .line 122
    invoke-direct/range {v8 .. v13}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 123
    .line 124
    .line 125
    sput-object v8, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_APPEND:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 126
    .line 127
    new-instance v9, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 128
    .line 129
    const/4 v13, 0x0

    .line 130
    const/4 v14, 0x1

    .line 131
    const-string v10, "PROFILE_DELETE"

    .line 132
    .line 133
    const/16 v11, 0x9

    .line 134
    .line 135
    const-string v12, "profile_delete"

    .line 136
    .line 137
    invoke-direct/range {v9 .. v14}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 138
    .line 139
    .line 140
    sput-object v9, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->PROFILE_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 141
    .line 142
    new-instance v10, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 143
    .line 144
    const/4 v14, 0x0

    .line 145
    const/4 v15, 0x0

    .line 146
    const-string v11, "ITEM_SET"

    .line 147
    .line 148
    const/16 v12, 0xa

    .line 149
    .line 150
    const-string v13, "item_set"

    .line 151
    .line 152
    invoke-direct/range {v10 .. v15}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 153
    .line 154
    .line 155
    sput-object v10, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ITEM_SET:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 156
    .line 157
    new-instance v11, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 158
    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    const-string v12, "ITEM_DELETE"

    .line 162
    .line 163
    const/16 v13, 0xb

    .line 164
    .line 165
    const-string v14, "item_delete"

    .line 166
    .line 167
    invoke-direct/range {v11 .. v16}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 168
    .line 169
    .line 170
    sput-object v11, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ITEM_DELETE:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 171
    .line 172
    new-instance v12, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 173
    .line 174
    const/16 v17, 0x0

    .line 175
    .line 176
    const-string v13, "DEFAULT"

    .line 177
    .line 178
    const/16 v14, 0xc

    .line 179
    .line 180
    const-string v15, "default"

    .line 181
    .line 182
    invoke-direct/range {v12 .. v17}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 183
    .line 184
    .line 185
    sput-object v12, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->DEFAULT:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 186
    .line 187
    new-instance v13, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 188
    .line 189
    const/16 v18, 0x0

    .line 190
    .line 191
    const-string v14, "ALL"

    .line 192
    .line 193
    const/16 v15, 0xd

    .line 194
    .line 195
    const-string v16, "all"

    .line 196
    .line 197
    invoke-direct/range {v13 .. v18}, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;-><init>(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 198
    .line 199
    .line 200
    sput-object v13, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->ALL:Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 201
    .line 202
    const/16 v14, 0xe

    .line 203
    .line 204
    new-array v14, v14, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 205
    .line 206
    const/4 v15, 0x0

    .line 207
    aput-object v0, v14, v15

    .line 208
    .line 209
    const/4 v0, 0x1

    .line 210
    aput-object v1, v14, v0

    .line 211
    .line 212
    const/4 v0, 0x2

    .line 213
    aput-object v2, v14, v0

    .line 214
    .line 215
    const/4 v0, 0x3

    .line 216
    aput-object v3, v14, v0

    .line 217
    .line 218
    const/4 v0, 0x4

    .line 219
    aput-object v4, v14, v0

    .line 220
    .line 221
    const/4 v0, 0x5

    .line 222
    aput-object v5, v14, v0

    .line 223
    .line 224
    const/4 v0, 0x6

    .line 225
    aput-object v6, v14, v0

    .line 226
    .line 227
    const/4 v0, 0x7

    .line 228
    aput-object v7, v14, v0

    .line 229
    .line 230
    const/16 v0, 0x8

    .line 231
    .line 232
    aput-object v8, v14, v0

    .line 233
    .line 234
    const/16 v0, 0x9

    .line 235
    .line 236
    aput-object v9, v14, v0

    .line 237
    .line 238
    const/16 v0, 0xa

    .line 239
    .line 240
    aput-object v10, v14, v0

    .line 241
    .line 242
    const/16 v0, 0xb

    .line 243
    .line 244
    aput-object v11, v14, v0

    .line 245
    .line 246
    const/16 v0, 0xc

    .line 247
    .line 248
    aput-object v12, v14, v0

    .line 249
    .line 250
    const/16 v0, 0xd

    .line 251
    .line 252
    aput-object v13, v14, v0

    .line 253
    .line 254
    sput-object v14, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 255
    .line 256
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->eventType:Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->track:Z

    .line 7
    .line 8
    iput-boolean p5, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->profile:Z

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->$VALUES:[Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->eventType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isProfile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->profile:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTrack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/internal/beans/EventType;->track:Z

    .line 2
    .line 3
    return v0
.end method
