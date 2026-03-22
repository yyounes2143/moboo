.class public final Lcom/google/android/gms/internal/ads/zzay;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:Ljava/util/ArrayList;

.field private static final zzc:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzay;->zzb:Ljava/util/ArrayList;

    .line 7
    .line 8
    const-string v0, "^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/zzay;->zzc:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x5

    .line 7
    const/16 v3, 0x9

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    const/16 v5, 0x8

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :sswitch_0
    const-string v0, "audio/true-hd"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const/16 p0, 0xa

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :sswitch_1
    const-string v0, "audio/vnd.dts.hd"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    move p0, v4

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :sswitch_2
    const-string v0, "audio/opus"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    const/16 p0, 0xb

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_3
    const-string v0, "audio/mpeg"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    .line 61
    move p0, v6

    .line 62
    goto :goto_1

    .line 63
    :sswitch_4
    const-string v0, "audio/eac3"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_0

    .line 70
    .line 71
    const/4 p0, 0x3

    .line 72
    goto :goto_1

    .line 73
    :sswitch_5
    const-string v0, "audio/vnd.dts.uhd;profile=p2"

    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_0

    .line 80
    .line 81
    move p0, v3

    .line 82
    goto :goto_1

    .line 83
    :sswitch_6
    const-string v0, "audio/ac4"

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-eqz p0, :cond_0

    .line 90
    .line 91
    move p0, v2

    .line 92
    goto :goto_1

    .line 93
    :sswitch_7
    const-string v0, "audio/ac3"

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_0

    .line 100
    .line 101
    const/4 p0, 0x2

    .line 102
    goto :goto_1

    .line 103
    :sswitch_8
    const-string v0, "audio/mp4a-latm"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result p0

    .line 109
    if-eqz p0, :cond_0

    .line 110
    .line 111
    const/4 p0, 0x1

    .line 112
    goto :goto_1

    .line 113
    :sswitch_9
    const-string v0, "audio/vnd.dts"

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-eqz p0, :cond_0

    .line 120
    .line 121
    move p0, v1

    .line 122
    goto :goto_1

    .line 123
    :sswitch_a
    const-string v0, "audio/vnd.dts.hd;profile=lbr"

    .line 124
    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    if-eqz p0, :cond_0

    .line 130
    .line 131
    move p0, v5

    .line 132
    goto :goto_1

    .line 133
    :sswitch_b
    const-string v0, "audio/eac3-joc"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_0

    .line 140
    .line 141
    const/4 p0, 0x4

    .line 142
    goto :goto_1

    .line 143
    :cond_0
    :goto_0
    const/4 p0, -0x1

    .line 144
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 145
    .line 146
    .line 147
    return v6

    .line 148
    :pswitch_0
    const/16 p0, 0x14

    .line 149
    .line 150
    return p0

    .line 151
    :pswitch_1
    const/16 p0, 0xe

    .line 152
    .line 153
    return p0

    .line 154
    :pswitch_2
    const/16 p0, 0x1e

    .line 155
    .line 156
    return p0

    .line 157
    :pswitch_3
    return v5

    .line 158
    :pswitch_4
    return v4

    .line 159
    :pswitch_5
    const/16 p0, 0x11

    .line 160
    .line 161
    return p0

    .line 162
    :pswitch_6
    const/16 p0, 0x12

    .line 163
    .line 164
    return p0

    .line 165
    :pswitch_7
    return v1

    .line 166
    :pswitch_8
    return v2

    .line 167
    :pswitch_9
    if-nez p1, :cond_1

    .line 168
    .line 169
    return v6

    .line 170
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzay;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzax;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    if-nez p0, :cond_2

    .line 175
    .line 176
    return v6

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzax;->zza()I

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    return p0

    .line 182
    :pswitch_a
    return v3

    .line 183
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_b
        -0x51617051 -> :sswitch_a
        -0x41455b98 -> :sswitch_9
        -0x3313c2e -> :sswitch_8
        0xb269698 -> :sswitch_7
        0xb269699 -> :sswitch_6
        0x20d04866 -> :sswitch_5
        0x59ae0c65 -> :sswitch_4
        0x59b1e81e -> :sswitch_3
        0x59b2d2d8 -> :sswitch_2
        0x59c2dc42 -> :sswitch_1
        0x5cc95062 -> :sswitch_0
    .end sparse-switch

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Ljava/lang/String;)I
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzh(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzj(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_a

    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzk(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v2, "text"

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_9

    .line 34
    .line 35
    const-string v0, "application/x-media3-cues"

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_9

    .line 42
    .line 43
    const-string v0, "application/cea-608"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_9

    .line 50
    .line 51
    const-string v0, "application/cea-708"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_9

    .line 58
    .line 59
    const-string v0, "application/x-mp4-cea-608"

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_9

    .line 66
    .line 67
    const-string v0, "application/x-subrip"

    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_9

    .line 74
    .line 75
    const-string v0, "application/ttml+xml"

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-nez v0, :cond_9

    .line 82
    .line 83
    const-string v0, "application/x-quicktime-tx3g"

    .line 84
    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_9

    .line 90
    .line 91
    const-string v0, "application/x-mp4-vtt"

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    const-string v0, "application/x-rawcc"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_9

    .line 106
    .line 107
    const-string v0, "application/vobsub"

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_9

    .line 114
    .line 115
    const-string v0, "application/pgs"

    .line 116
    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_9

    .line 122
    .line 123
    const-string v0, "application/dvbsubs"

    .line 124
    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzi(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    const/4 p0, 0x4

    .line 139
    return p0

    .line 140
    :cond_3
    const-string v0, "application/id3"

    .line 141
    .line 142
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_8

    .line 147
    .line 148
    const-string v0, "application/x-emsg"

    .line 149
    .line 150
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_8

    .line 155
    .line 156
    const-string v0, "application/x-scte35"

    .line 157
    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    const-string v0, "application/x-icy"

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_8

    .line 171
    .line 172
    const-string v0, "application/vnd.dvb.ait"

    .line 173
    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    const-string v0, "application/x-camera-motion"

    .line 182
    .line 183
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-nez v0, :cond_7

    .line 188
    .line 189
    sget-object v0, Lcom/google/android/gms/internal/ads/zzay;->zzb:Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    const/4 v3, 0x0

    .line 196
    move v4, v3

    .line 197
    :goto_0
    if-ge v4, v2, :cond_6

    .line 198
    .line 199
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    check-cast v5, Lcom/google/android/gms/internal/ads/zzaw;

    .line 204
    .line 205
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaw;->zza:Ljava/lang/String;

    .line 206
    .line 207
    const/4 v5, 0x0

    .line 208
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_5

    .line 213
    .line 214
    return v3

    .line 215
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_6
    return v1

    .line 219
    :cond_7
    const/4 p0, 0x6

    .line 220
    return p0

    .line 221
    :cond_8
    :goto_1
    const/4 p0, 0x5

    .line 222
    return p0

    .line 223
    :cond_9
    :goto_2
    const/4 p0, 0x3

    .line 224
    return p0

    .line 225
    :cond_a
    const/4 p0, 0x2

    .line 226
    return p0
.end method

.method public static zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzax;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzay;->zzc:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/16 v1, 0x10

    .line 28
    .line 29
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzax;

    .line 42
    .line 43
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzax;-><init>(II)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :catch_0
    :goto_1
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method public static zzd(I)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-eq p0, v0, :cond_8

    .line 4
    .line 5
    const/16 v0, 0x21

    .line 6
    .line 7
    if-eq p0, v0, :cond_7

    .line 8
    .line 9
    const/16 v0, 0x23

    .line 10
    .line 11
    if-eq p0, v0, :cond_6

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    if-eq p0, v0, :cond_5

    .line 16
    .line 17
    const/16 v0, 0xa3

    .line 18
    .line 19
    if-eq p0, v0, :cond_4

    .line 20
    .line 21
    const/16 v0, 0xb1

    .line 22
    .line 23
    if-eq p0, v0, :cond_3

    .line 24
    .line 25
    const/16 v0, 0xdd

    .line 26
    .line 27
    if-eq p0, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0xa5

    .line 30
    .line 31
    if-eq p0, v0, :cond_1

    .line 32
    .line 33
    const/16 v0, 0xa6

    .line 34
    .line 35
    if-eq p0, v0, :cond_0

    .line 36
    .line 37
    packed-switch p0, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    packed-switch p0, :pswitch_data_1

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    return-object p0

    .line 45
    :pswitch_0
    const-string p0, "audio/ac4"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_1
    const-string p0, "audio/opus"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_2
    const-string p0, "audio/vnd.dts.hd"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_3
    const-string p0, "audio/vnd.dts"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_4
    const-string p0, "image/jpeg"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_5
    const-string p0, "video/mpeg"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_6
    const-string p0, "audio/mpeg"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_7
    const-string p0, "video/mpeg2"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_0
    const-string p0, "audio/eac3"

    .line 70
    .line 71
    return-object p0

    .line 72
    :cond_1
    const-string p0, "audio/ac3"

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_2
    const-string p0, "audio/vorbis"

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    const-string p0, "video/x-vnd.on2.vp9"

    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_4
    const-string p0, "video/wvc1"

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_5
    :pswitch_8
    const-string p0, "audio/mp4a-latm"

    .line 85
    .line 86
    return-object p0

    .line 87
    :cond_6
    const-string p0, "video/hevc"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_7
    const-string p0, "video/avc"

    .line 91
    .line 92
    return-object p0

    .line 93
    :cond_8
    const-string p0, "video/mp4v-es"

    .line 94
    .line 95
    return-object p0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zze(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sparse-switch v0, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v0, "audio/mp3"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    goto :goto_1

    .line 27
    :sswitch_1
    const-string v0, "audio/mpeg-l2"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    goto :goto_1

    .line 37
    :sswitch_2
    const-string v0, "audio/mpeg-l1"

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string v0, "audio/x-wav"

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    const/4 v0, 0x3

    .line 56
    goto :goto_1

    .line 57
    :sswitch_4
    const-string v0, "application/x-mpegurl"

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    goto :goto_1

    .line 67
    :sswitch_5
    const-string v0, "audio/x-flac"

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    goto :goto_1

    .line 77
    :sswitch_6
    const-string v0, "video/x-mvhevc"

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 88
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 89
    .line 90
    .line 91
    return-object p0

    .line 92
    :pswitch_0
    const-string p0, "audio/mpeg-L2"

    .line 93
    .line 94
    return-object p0

    .line 95
    :pswitch_1
    const-string p0, "audio/mpeg-L1"

    .line 96
    .line 97
    return-object p0

    .line 98
    :pswitch_2
    const-string p0, "application/x-mpegURL"

    .line 99
    .line 100
    return-object p0

    .line 101
    :pswitch_3
    const-string p0, "audio/wav"

    .line 102
    .line 103
    return-object p0

    .line 104
    :pswitch_4
    const-string p0, "audio/mpeg"

    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_5
    const-string p0, "audio/flac"

    .line 108
    .line 109
    return-object p0

    .line 110
    :pswitch_6
    const-string p0, "video/mv-hevc"

    .line 111
    .line 112
    return-object p0

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x6d4a8464 -> :sswitch_6
        -0x3c11ec0a -> :sswitch_5
        -0x3a5bd08a -> :sswitch_4
        -0x22f81362 -> :sswitch_3
        -0x19cc8eac -> :sswitch_2
        -0x19cc8eab -> :sswitch_1
        0xb26c537 -> :sswitch_0
    .end sparse-switch

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    sparse-switch v1, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v1, "audio/g711-mlaw"

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const/4 p0, 0x5

    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :sswitch_1
    const-string v1, "audio/g711-alaw"

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    const/4 p0, 0x4

    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :sswitch_2
    const-string v1, "audio/mpeg"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    move p0, v0

    .line 46
    goto :goto_1

    .line 47
    :sswitch_3
    const-string v1, "audio/flac"

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    .line 55
    const/4 p0, 0x6

    .line 56
    goto :goto_1

    .line 57
    :sswitch_4
    const-string v1, "audio/eac3"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    const/16 p0, 0x8

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :sswitch_5
    const-string v1, "audio/raw"

    .line 69
    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    .line 76
    const/4 p0, 0x3

    .line 77
    goto :goto_1

    .line 78
    :sswitch_6
    const-string v1, "audio/ac3"

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    const/4 p0, 0x7

    .line 87
    goto :goto_1

    .line 88
    :sswitch_7
    const-string v1, "audio/mp4a-latm"

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_1

    .line 95
    .line 96
    const/16 p0, 0xa

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :sswitch_8
    const-string v1, "audio/mpeg-L2"

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_1

    .line 106
    .line 107
    const/4 p0, 0x2

    .line 108
    goto :goto_1

    .line 109
    :sswitch_9
    const-string v1, "audio/mpeg-L1"

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-eqz p0, :cond_1

    .line 116
    .line 117
    move p0, v2

    .line 118
    goto :goto_1

    .line 119
    :sswitch_a
    const-string v1, "audio/eac3-joc"

    .line 120
    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-eqz p0, :cond_1

    .line 126
    .line 127
    const/16 p0, 0x9

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 131
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 132
    .line 133
    .line 134
    return v0

    .line 135
    :pswitch_0
    if-nez p1, :cond_2

    .line 136
    .line 137
    return v0

    .line 138
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzay;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzax;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-nez p0, :cond_3

    .line 143
    .line 144
    return v0

    .line 145
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzax;->zza()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-eqz p0, :cond_4

    .line 150
    .line 151
    const/16 p1, 0x10

    .line 152
    .line 153
    if-eq p0, p1, :cond_4

    .line 154
    .line 155
    return v2

    .line 156
    :cond_4
    return v0

    .line 157
    :pswitch_1
    return v2

    .line 158
    nop

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_a
        -0x19cc928c -> :sswitch_9
        -0x19cc928b -> :sswitch_8
        -0x3313c2e -> :sswitch_7
        0xb269698 -> :sswitch_6
        0xb26d66f -> :sswitch_5
        0x59ae0c65 -> :sswitch_4
        0x59aeaa01 -> :sswitch_3
        0x59b1e81e -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p0, :cond_2b

    .line 5
    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    new-array p0, v1, [Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v3, "(\\s*,\\s*)"

    .line 22
    .line 23
    const/4 v4, -0x1

    .line 24
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    array-length v4, p0

    .line 34
    move v5, v1

    .line 35
    :goto_1
    if-ge v5, v4, :cond_2a

    .line 36
    .line 37
    aget-object v6, p0, v5

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    :cond_1
    :goto_2
    move-object v7, v2

    .line 42
    goto/16 :goto_f

    .line 43
    .line 44
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const-string v8, "avc1"

    .line 53
    .line 54
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-nez v8, :cond_26

    .line 59
    .line 60
    const-string v8, "avc3"

    .line 61
    .line 62
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_3

    .line 67
    .line 68
    goto/16 :goto_e

    .line 69
    .line 70
    :cond_3
    const-string v8, "hev1"

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-nez v8, :cond_25

    .line 77
    .line 78
    const-string v8, "hvc1"

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_4

    .line 85
    .line 86
    goto/16 :goto_d

    .line 87
    .line 88
    :cond_4
    const-string v8, "dvav"

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_24

    .line 95
    .line 96
    const-string v8, "dva1"

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_24

    .line 103
    .line 104
    const-string v8, "dvhe"

    .line 105
    .line 106
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-nez v8, :cond_24

    .line 111
    .line 112
    const-string v8, "dvh1"

    .line 113
    .line 114
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_5

    .line 119
    .line 120
    goto/16 :goto_c

    .line 121
    .line 122
    :cond_5
    const-string v8, "av01"

    .line 123
    .line 124
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_6

    .line 129
    .line 130
    const-string v7, "video/av01"

    .line 131
    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :cond_6
    const-string v8, "vp9"

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-nez v8, :cond_23

    .line 141
    .line 142
    const-string v8, "vp09"

    .line 143
    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_7

    .line 149
    .line 150
    goto/16 :goto_b

    .line 151
    .line 152
    :cond_7
    const-string v8, "vp8"

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v8

    .line 158
    if-nez v8, :cond_22

    .line 159
    .line 160
    const-string v8, "vp08"

    .line 161
    .line 162
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    if-eqz v8, :cond_8

    .line 167
    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :cond_8
    const-string v8, "mp4a"

    .line 171
    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_a

    .line 177
    .line 178
    const-string v8, "mp4a."

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_9

    .line 185
    .line 186
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzay;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzax;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    if-eqz v7, :cond_9

    .line 191
    .line 192
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzax;->zza:I

    .line 193
    .line 194
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzay;->zzd(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    goto :goto_3

    .line 199
    :cond_9
    move-object v7, v2

    .line 200
    :goto_3
    if-nez v7, :cond_27

    .line 201
    .line 202
    const-string v7, "audio/mp4a-latm"

    .line 203
    .line 204
    goto/16 :goto_f

    .line 205
    .line 206
    :cond_a
    const-string v8, "mha1"

    .line 207
    .line 208
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v8

    .line 212
    if-eqz v8, :cond_b

    .line 213
    .line 214
    const-string v7, "audio/mha1"

    .line 215
    .line 216
    goto/16 :goto_f

    .line 217
    .line 218
    :cond_b
    const-string v8, "mhm1"

    .line 219
    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    if-eqz v8, :cond_c

    .line 225
    .line 226
    const-string v7, "audio/mhm1"

    .line 227
    .line 228
    goto/16 :goto_f

    .line 229
    .line 230
    :cond_c
    const-string v8, "ac-3"

    .line 231
    .line 232
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v8

    .line 236
    if-nez v8, :cond_21

    .line 237
    .line 238
    const-string v8, "dac3"

    .line 239
    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_d

    .line 245
    .line 246
    goto/16 :goto_9

    .line 247
    .line 248
    :cond_d
    const-string v8, "ec-3"

    .line 249
    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-nez v8, :cond_20

    .line 255
    .line 256
    const-string v8, "dec3"

    .line 257
    .line 258
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    if-eqz v8, :cond_e

    .line 263
    .line 264
    goto/16 :goto_8

    .line 265
    .line 266
    :cond_e
    const-string v8, "ec+3"

    .line 267
    .line 268
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-eqz v8, :cond_f

    .line 273
    .line 274
    const-string v7, "audio/eac3-joc"

    .line 275
    .line 276
    goto/16 :goto_f

    .line 277
    .line 278
    :cond_f
    const-string v8, "ac-4"

    .line 279
    .line 280
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-nez v8, :cond_1f

    .line 285
    .line 286
    const-string v8, "dac4"

    .line 287
    .line 288
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-eqz v8, :cond_10

    .line 293
    .line 294
    goto/16 :goto_7

    .line 295
    .line 296
    :cond_10
    const-string v8, "dtsc"

    .line 297
    .line 298
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    if-eqz v8, :cond_11

    .line 303
    .line 304
    const-string v7, "audio/vnd.dts"

    .line 305
    .line 306
    goto/16 :goto_f

    .line 307
    .line 308
    :cond_11
    const-string v8, "dtse"

    .line 309
    .line 310
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v8

    .line 314
    if-eqz v8, :cond_12

    .line 315
    .line 316
    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    .line 317
    .line 318
    goto/16 :goto_f

    .line 319
    .line 320
    :cond_12
    const-string v8, "dtsh"

    .line 321
    .line 322
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v8

    .line 326
    if-nez v8, :cond_1e

    .line 327
    .line 328
    const-string v8, "dtsl"

    .line 329
    .line 330
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_13

    .line 335
    .line 336
    goto/16 :goto_6

    .line 337
    .line 338
    :cond_13
    const-string v8, "dtsx"

    .line 339
    .line 340
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    if-eqz v8, :cond_14

    .line 345
    .line 346
    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    .line 347
    .line 348
    goto/16 :goto_f

    .line 349
    .line 350
    :cond_14
    const-string v8, "opus"

    .line 351
    .line 352
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result v8

    .line 356
    if-eqz v8, :cond_15

    .line 357
    .line 358
    const-string v7, "audio/opus"

    .line 359
    .line 360
    goto/16 :goto_f

    .line 361
    .line 362
    :cond_15
    const-string v8, "vorbis"

    .line 363
    .line 364
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-eqz v8, :cond_16

    .line 369
    .line 370
    const-string v7, "audio/vorbis"

    .line 371
    .line 372
    goto/16 :goto_f

    .line 373
    .line 374
    :cond_16
    const-string v8, "flac"

    .line 375
    .line 376
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_17

    .line 381
    .line 382
    const-string v7, "audio/flac"

    .line 383
    .line 384
    goto/16 :goto_f

    .line 385
    .line 386
    :cond_17
    const-string v8, "stpp"

    .line 387
    .line 388
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_18

    .line 393
    .line 394
    const-string v7, "application/ttml+xml"

    .line 395
    .line 396
    goto/16 :goto_f

    .line 397
    .line 398
    :cond_18
    const-string v8, "wvtt"

    .line 399
    .line 400
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    if-eqz v8, :cond_19

    .line 405
    .line 406
    const-string v7, "text/vtt"

    .line 407
    .line 408
    goto :goto_f

    .line 409
    :cond_19
    const-string v8, "cea708"

    .line 410
    .line 411
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    if-eqz v8, :cond_1a

    .line 416
    .line 417
    const-string v7, "application/cea-708"

    .line 418
    .line 419
    goto :goto_f

    .line 420
    :cond_1a
    const-string v8, "eia608"

    .line 421
    .line 422
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    if-nez v8, :cond_1d

    .line 427
    .line 428
    const-string v8, "cea608"

    .line 429
    .line 430
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    if-eqz v8, :cond_1b

    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_1b
    sget-object v8, Lcom/google/android/gms/internal/ads/zzay;->zzb:Ljava/util/ArrayList;

    .line 438
    .line 439
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    move v10, v1

    .line 444
    :goto_4
    if-ge v10, v9, :cond_1

    .line 445
    .line 446
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    check-cast v11, Lcom/google/android/gms/internal/ads/zzaw;

    .line 451
    .line 452
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzaw;->zzb:Ljava/lang/String;

    .line 453
    .line 454
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v11

    .line 458
    if-eqz v11, :cond_1c

    .line 459
    .line 460
    goto/16 :goto_2

    .line 461
    .line 462
    :cond_1c
    add-int/2addr v10, v0

    .line 463
    goto :goto_4

    .line 464
    :cond_1d
    :goto_5
    const-string v7, "application/cea-608"

    .line 465
    .line 466
    goto :goto_f

    .line 467
    :cond_1e
    :goto_6
    const-string v7, "audio/vnd.dts.hd"

    .line 468
    .line 469
    goto :goto_f

    .line 470
    :cond_1f
    :goto_7
    const-string v7, "audio/ac4"

    .line 471
    .line 472
    goto :goto_f

    .line 473
    :cond_20
    :goto_8
    const-string v7, "audio/eac3"

    .line 474
    .line 475
    goto :goto_f

    .line 476
    :cond_21
    :goto_9
    const-string v7, "audio/ac3"

    .line 477
    .line 478
    goto :goto_f

    .line 479
    :cond_22
    :goto_a
    const-string v7, "video/x-vnd.on2.vp8"

    .line 480
    .line 481
    goto :goto_f

    .line 482
    :cond_23
    :goto_b
    const-string v7, "video/x-vnd.on2.vp9"

    .line 483
    .line 484
    goto :goto_f

    .line 485
    :cond_24
    :goto_c
    const-string v7, "video/dolby-vision"

    .line 486
    .line 487
    goto :goto_f

    .line 488
    :cond_25
    :goto_d
    const-string v7, "video/hevc"

    .line 489
    .line 490
    goto :goto_f

    .line 491
    :cond_26
    :goto_e
    const-string v7, "video/avc"

    .line 492
    .line 493
    :cond_27
    :goto_f
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v7

    .line 497
    if-eqz v7, :cond_29

    .line 498
    .line 499
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    if-lez v7, :cond_28

    .line 504
    .line 505
    const-string v7, ","

    .line 506
    .line 507
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    :cond_28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    :cond_29
    add-int/2addr v5, v0

    .line 514
    goto/16 :goto_1

    .line 515
    .line 516
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 517
    .line 518
    .line 519
    move-result p0

    .line 520
    if-lez p0, :cond_2b

    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    :cond_2b
    if-eqz v2, :cond_2c

    .line 527
    .line 528
    return v0

    .line 529
    :cond_2c
    return v1
.end method

.method public static zzh(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzk(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static zzi(Ljava/lang/String;)Z
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "image"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzk(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    const-string v0, "application/x-image-uri"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public static zzj(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzay;->zzk(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static zzk(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/16 v0, 0x2f

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method
