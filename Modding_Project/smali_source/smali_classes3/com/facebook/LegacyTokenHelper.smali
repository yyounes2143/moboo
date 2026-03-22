.class public final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/LegacyTokenHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/facebook/LegacyTokenHelper;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "cacheKey",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/os/Bundle;",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "key",
        "bundle",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;Landroid/os/Bundle;)V",
        "Ljava/lang/String;",
        "Landroid/content/SharedPreferences;",
        "Landroid/content/SharedPreferences;",
        "cache",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/LegacyTokenHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/LegacyTokenHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/LegacyTokenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/LegacyTokenHelper;->Companion:Lcom/facebook/LegacyTokenHelper$Companion;

    .line 8
    .line 9
    const-class v0, Lcom/facebook/LegacyTokenHelper;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    :cond_1
    iput-object p2, p0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/os/Bundle;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    sget-object v1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 38
    .line 39
    sget-object v3, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 40
    .line 41
    sget-object v4, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v6, "Error reading cached value for key: \'"

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "\' -- "

    .line 57
    .line 58
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/facebook/internal/Logger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    :cond_0
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "{}"

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_29

    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "valueType"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_28

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v5, "value"

    .line 31
    .line 32
    sparse-switch v2, :sswitch_data_0

    .line 33
    .line 34
    .line 35
    goto/16 :goto_13

    .line 36
    .line 37
    :sswitch_0
    const-string v2, "short[]"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_13

    .line 46
    .line 47
    :cond_0
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    new-array v2, v1, [S

    .line 56
    .line 57
    add-int/lit8 v1, v1, -0x1

    .line 58
    .line 59
    if-ltz v1, :cond_2

    .line 60
    .line 61
    :goto_0
    add-int/lit8 v3, v4, 0x1

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    int-to-short v5, v5

    .line 68
    aput-short v5, v2, v4

    .line 69
    .line 70
    if-le v3, v1, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v4, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :sswitch_1
    const-string v2, "double[]"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    goto/16 :goto_13

    .line 88
    .line 89
    :cond_3
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    new-array v2, v1, [D

    .line 98
    .line 99
    add-int/lit8 v1, v1, -0x1

    .line 100
    .line 101
    if-ltz v1, :cond_5

    .line 102
    .line 103
    :goto_2
    add-int/lit8 v3, v4, 0x1

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    aput-wide v5, v2, v4

    .line 110
    .line 111
    if-le v3, v1, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    move v4, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_3
    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :sswitch_2
    const-string v2, "short"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    goto/16 :goto_13

    .line 129
    .line 130
    :cond_6
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    int-to-short v0, v0

    .line 135
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :sswitch_3
    const-string v2, "int[]"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_7

    .line 146
    .line 147
    goto/16 :goto_13

    .line 148
    .line 149
    :cond_7
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    new-array v2, v1, [I

    .line 158
    .line 159
    add-int/lit8 v1, v1, -0x1

    .line 160
    .line 161
    if-ltz v1, :cond_9

    .line 162
    .line 163
    :goto_4
    add-int/lit8 v3, v4, 0x1

    .line 164
    .line 165
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    aput v5, v2, v4

    .line 170
    .line 171
    if-le v3, v1, :cond_8

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_8
    move v4, v3

    .line 175
    goto :goto_4

    .line 176
    :cond_9
    :goto_5
    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :sswitch_4
    const-string v2, "float"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-nez v0, :cond_a

    .line 187
    .line 188
    goto/16 :goto_13

    .line 189
    .line 190
    :cond_a
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 191
    .line 192
    .line 193
    move-result-wide v0

    .line 194
    double-to-float v0, v0

    .line 195
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :sswitch_5
    const-string v2, "long"

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_b

    .line 206
    .line 207
    goto/16 :goto_13

    .line 208
    .line 209
    :cond_b
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :sswitch_6
    const-string v2, "enum"

    .line 218
    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_c

    .line 224
    .line 225
    goto/16 :goto_13

    .line 226
    .line 227
    :cond_c
    :try_start_0
    const-string v0, "enumType"

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :sswitch_7
    const-string v2, "char"

    .line 250
    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-nez v0, :cond_d

    .line 256
    .line 257
    goto/16 :goto_13

    .line 258
    .line 259
    :cond_d
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    if-eqz v0, :cond_28

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-ne v1, v3, :cond_28

    .line 270
    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :sswitch_8
    const-string v2, "byte"

    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_e

    .line 286
    .line 287
    goto/16 :goto_13

    .line 288
    .line 289
    :cond_e
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    int-to-byte v0, v0

    .line 294
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 295
    .line 296
    .line 297
    return-void

    .line 298
    :sswitch_9
    const-string v2, "bool"

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-nez v0, :cond_f

    .line 305
    .line 306
    goto/16 :goto_13

    .line 307
    .line 308
    :cond_f
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :sswitch_a
    const-string v2, "int"

    .line 317
    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_10

    .line 323
    .line 324
    goto/16 :goto_13

    .line 325
    .line 326
    :cond_10
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :sswitch_b
    const-string v2, "float[]"

    .line 335
    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_11

    .line 341
    .line 342
    goto/16 :goto_13

    .line 343
    .line 344
    :cond_11
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    new-array v2, v1, [F

    .line 353
    .line 354
    add-int/lit8 v1, v1, -0x1

    .line 355
    .line 356
    if-ltz v1, :cond_13

    .line 357
    .line 358
    :goto_6
    add-int/lit8 v3, v4, 0x1

    .line 359
    .line 360
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    .line 361
    .line 362
    .line 363
    move-result-wide v5

    .line 364
    double-to-float v5, v5

    .line 365
    aput v5, v2, v4

    .line 366
    .line 367
    if-le v3, v1, :cond_12

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_12
    move v4, v3

    .line 371
    goto :goto_6

    .line 372
    :cond_13
    :goto_7
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :sswitch_c
    const-string v2, "string"

    .line 377
    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_14

    .line 383
    .line 384
    goto/16 :goto_13

    .line 385
    .line 386
    :cond_14
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :sswitch_d
    const-string v2, "long[]"

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    if-nez v0, :cond_15

    .line 401
    .line 402
    goto/16 :goto_13

    .line 403
    .line 404
    :cond_15
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    new-array v2, v1, [J

    .line 413
    .line 414
    add-int/lit8 v1, v1, -0x1

    .line 415
    .line 416
    if-ltz v1, :cond_17

    .line 417
    .line 418
    :goto_8
    add-int/lit8 v3, v4, 0x1

    .line 419
    .line 420
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    .line 421
    .line 422
    .line 423
    move-result-wide v5

    .line 424
    aput-wide v5, v2, v4

    .line 425
    .line 426
    if-le v3, v1, :cond_16

    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_16
    move v4, v3

    .line 430
    goto :goto_8

    .line 431
    :cond_17
    :goto_9
    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :sswitch_e
    const-string v2, "double"

    .line 436
    .line 437
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_18

    .line 442
    .line 443
    goto/16 :goto_13

    .line 444
    .line 445
    :cond_18
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 446
    .line 447
    .line 448
    move-result-wide v0

    .line 449
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 450
    .line 451
    .line 452
    return-void

    .line 453
    :sswitch_f
    const-string v2, "char[]"

    .line 454
    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_19

    .line 460
    .line 461
    goto/16 :goto_13

    .line 462
    .line 463
    :cond_19
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    new-array v2, v1, [C

    .line 472
    .line 473
    add-int/lit8 v1, v1, -0x1

    .line 474
    .line 475
    if-ltz v1, :cond_1c

    .line 476
    .line 477
    move v5, v4

    .line 478
    :goto_a
    add-int/lit8 v6, v5, 0x1

    .line 479
    .line 480
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    if-eqz v7, :cond_1a

    .line 485
    .line 486
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    if-ne v8, v3, :cond_1a

    .line 491
    .line 492
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    .line 493
    .line 494
    .line 495
    move-result v7

    .line 496
    aput-char v7, v2, v5

    .line 497
    .line 498
    :cond_1a
    if-le v6, v1, :cond_1b

    .line 499
    .line 500
    goto :goto_b

    .line 501
    :cond_1b
    move v5, v6

    .line 502
    goto :goto_a

    .line 503
    :cond_1c
    :goto_b
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :sswitch_10
    const-string v2, "byte[]"

    .line 508
    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_1d

    .line 514
    .line 515
    goto/16 :goto_13

    .line 516
    .line 517
    :cond_1d
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    new-array v2, v1, [B

    .line 526
    .line 527
    add-int/lit8 v1, v1, -0x1

    .line 528
    .line 529
    if-ltz v1, :cond_1f

    .line 530
    .line 531
    :goto_c
    add-int/lit8 v3, v4, 0x1

    .line 532
    .line 533
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    .line 534
    .line 535
    .line 536
    move-result v5

    .line 537
    int-to-byte v5, v5

    .line 538
    aput-byte v5, v2, v4

    .line 539
    .line 540
    if-le v3, v1, :cond_1e

    .line 541
    .line 542
    goto :goto_d

    .line 543
    :cond_1e
    move v4, v3

    .line 544
    goto :goto_c

    .line 545
    :cond_1f
    :goto_d
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 546
    .line 547
    .line 548
    return-void

    .line 549
    :sswitch_11
    const-string v2, "bool[]"

    .line 550
    .line 551
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    if-nez v0, :cond_20

    .line 556
    .line 557
    goto :goto_13

    .line 558
    :cond_20
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    new-array v2, v1, [Z

    .line 567
    .line 568
    add-int/lit8 v1, v1, -0x1

    .line 569
    .line 570
    if-ltz v1, :cond_22

    .line 571
    .line 572
    :goto_e
    add-int/lit8 v3, v4, 0x1

    .line 573
    .line 574
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    aput-boolean v5, v2, v4

    .line 579
    .line 580
    if-le v3, v1, :cond_21

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :cond_21
    move v4, v3

    .line 584
    goto :goto_e

    .line 585
    :cond_22
    :goto_f
    invoke-virtual {p2, p1, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :sswitch_12
    const-string v2, "stringList"

    .line 590
    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_23

    .line 596
    .line 597
    goto :goto_13

    .line 598
    :cond_23
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 603
    .line 604
    .line 605
    move-result v1

    .line 606
    new-instance v2, Ljava/util/ArrayList;

    .line 607
    .line 608
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 609
    .line 610
    .line 611
    if-lez v1, :cond_27

    .line 612
    .line 613
    :goto_10
    add-int/lit8 v3, v4, 0x1

    .line 614
    .line 615
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 620
    .line 621
    if-ne v5, v6, :cond_24

    .line 622
    .line 623
    const/4 v5, 0x0

    .line 624
    goto :goto_11

    .line 625
    :cond_24
    if-eqz v5, :cond_26

    .line 626
    .line 627
    check-cast v5, Ljava/lang/String;

    .line 628
    .line 629
    :goto_11
    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 630
    .line 631
    .line 632
    if-lt v3, v1, :cond_25

    .line 633
    .line 634
    goto :goto_12

    .line 635
    :cond_25
    move v4, v3

    .line 636
    goto :goto_10

    .line 637
    :cond_26
    new-instance p1, Ljava/lang/NullPointerException;

    .line 638
    .line 639
    const-string p2, "null cannot be cast to non-null type kotlin.String"

    .line 640
    .line 641
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw p1

    .line 645
    :cond_27
    :goto_12
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 646
    .line 647
    .line 648
    :catch_0
    :cond_28
    :goto_13
    return-void

    .line 649
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 650
    .line 651
    const-string p2, "Required value was null."

    .line 652
    .line 653
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    throw p1

    .line 657
    :sswitch_data_0
    .sparse-switch
        -0x5dc6ebb1 -> :sswitch_12
        -0x5274cc34 -> :sswitch_11
        -0x51e5b596 -> :sswitch_10
        -0x5128dec8 -> :sswitch_f
        -0x4f08842f -> :sswitch_e
        -0x4164dd22 -> :sswitch_d
        -0x352a9fef -> :sswitch_c
        -0x2daef942 -> :sswitch_b
        0x197ef -> :sswitch_a
        0x2e3aea -> :sswitch_9
        0x2e6108 -> :sswitch_8
        0x2e9356 -> :sswitch_7
        0x2f9501 -> :sswitch_6
        0x32c67c -> :sswitch_5
        0x5d0225c -> :sswitch_4
        0x5fb6391 -> :sswitch_3
        0x685847c -> :sswitch_2
        0x5107d6f3 -> :sswitch_1
        0x7b3660de -> :sswitch_0
    .end sparse-switch
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
