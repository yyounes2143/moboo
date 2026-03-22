.class public final Lcom/google/android/gms/internal/ads/zzemk;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzetu;


# instance fields
.field public final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:Z

.field public final zzj:Landroid/graphics/Insets;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;ZLandroid/graphics/Insets;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/graphics/Insets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "the adSize must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzb:Ljava/lang/String;

    .line 12
    .line 13
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzc:Z

    .line 14
    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzd:Ljava/lang/String;

    .line 16
    .line 17
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzemk;->zze:F

    .line 18
    .line 19
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzf:I

    .line 20
    .line 21
    iput p7, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzg:I

    .line 22
    .line 23
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzh:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzi:Z

    .line 26
    .line 27
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzj:Landroid/graphics/Insets;

    .line 28
    .line 29
    return-void
.end method

.method private final zzc(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    move v2, v4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v2, v3

    .line 13
    :goto_0
    const-string v5, "smart_w"

    .line 14
    .line 15
    const-string v6, "full"

    .line 16
    .line 17
    invoke-static {p1, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 21
    .line 22
    const/4 v5, -0x2

    .line 23
    if-ne v2, v5, :cond_1

    .line 24
    .line 25
    move v5, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v5, v3

    .line 28
    :goto_1
    const-string v6, "smart_h"

    .line 29
    .line 30
    const-string v7, "auto"

    .line 31
    .line 32
    invoke-static {p1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    .line 36
    .line 37
    const-string v6, "ene"

    .line 38
    .line 39
    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 40
    .line 41
    .line 42
    const-string v5, "102"

    .line 43
    .line 44
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    .line 45
    .line 46
    const-string v7, "rafmt"

    .line 47
    .line 48
    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    const-string v5, "103"

    .line 52
    .line 53
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    .line 54
    .line 55
    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    const-string v5, "105"

    .line 59
    .line 60
    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    .line 61
    .line 62
    invoke-static {p1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzi:Z

    .line 66
    .line 67
    const-string v6, "inline_adaptive_slot"

    .line 68
    .line 69
    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 70
    .line 71
    .line 72
    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    .line 73
    .line 74
    const-string v6, "interscroller_slot"

    .line 75
    .line 76
    invoke-static {p1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfdd;->zzg(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    .line 77
    .line 78
    .line 79
    const-string v5, "format"

    .line 80
    .line 81
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzb:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v5, "fluid"

    .line 87
    .line 88
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzc:Z

    .line 89
    .line 90
    const-string v7, "height"

    .line 91
    .line 92
    invoke-static {p1, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzd:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    xor-int/2addr v6, v4

    .line 102
    const-string v8, "sz"

    .line 103
    .line 104
    invoke-static {p1, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    const-string v5, "u_sd"

    .line 108
    .line 109
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zze:F

    .line 110
    .line 111
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 112
    .line 113
    .line 114
    const-string v5, "sw"

    .line 115
    .line 116
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzf:I

    .line 117
    .line 118
    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    const-string v5, "sh"

    .line 122
    .line 123
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzg:I

    .line 124
    .line 125
    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzh:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    xor-int/2addr v4, v6

    .line 135
    const-string v6, "sc"

    .line 136
    .line 137
    invoke-static {p1, v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzfdd;->zzf(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    .line 139
    .line 140
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzny:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 141
    .line 142
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    check-cast v4, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_2

    .line 157
    .line 158
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 159
    .line 160
    const/16 v5, 0x23

    .line 161
    .line 162
    if-lt v4, v5, :cond_2

    .line 163
    .line 164
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzemk;->zzj:Landroid/graphics/Insets;

    .line 165
    .line 166
    if-eqz v4, :cond_2

    .line 167
    .line 168
    const-string v5, "sam_t"

    .line 169
    .line 170
    invoke-static {v4}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    const-string v5, "sam_b"

    .line 178
    .line 179
    invoke-static {v4}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    const-string v5, "sam_l"

    .line 187
    .line 188
    invoke-static {v4}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 193
    .line 194
    .line 195
    const-string v5, "sam_r"

    .line 196
    .line 197
    invoke-static {v4}, Landroidx/appcompat/widget/Wwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/graphics/Insets;)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    .line 210
    .line 211
    const-string v6, "is_fluid_height"

    .line 212
    .line 213
    const-string v8, "width"

    .line 214
    .line 215
    if-nez v5, :cond_3

    .line 216
    .line 217
    new-instance v3, Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v8, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 229
    .line 230
    invoke-virtual {v3, v6, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_3
    :goto_2
    array-length v0, v5

    .line 238
    if-ge v3, v0, :cond_4

    .line 239
    .line 240
    aget-object v0, v5, v3

    .line 241
    .line 242
    new-instance v1, Landroid/os/Bundle;

    .line 243
    .line 244
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 245
    .line 246
    .line 247
    iget-boolean v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    .line 248
    .line 249
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    .line 251
    .line 252
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    .line 253
    .line 254
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 255
    .line 256
    .line 257
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    .line 258
    .line 259
    invoke-virtual {v1, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :cond_4
    :goto_3
    const-string v0, "valid_ad_sizes"

    .line 269
    .line 270
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcuv;->zzb:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzemk;->zzc(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuv;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcuv;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzemk;->zzc(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
