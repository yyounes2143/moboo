.class public final Lcom/google/android/gms/internal/ads/zzdjo;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field static final zza:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdit;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdio;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdkc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdkk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbfv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdjo;->zza:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzfcp;Lcom/google/android/gms/internal/ads/zzdit;Lcom/google/android/gms/internal/ads/zzdio;Lcom/google/android/gms/internal/ads/zzdkc;Lcom/google/android/gms/internal/ads/zzdkk;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdil;)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/zzdkc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzdkk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 7
    .line 8
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfcp;->zzi:Lcom/google/android/gms/internal/ads/zzbfv;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzj:Lcom/google/android/gms/internal/ads/zzbfv;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzd:Lcom/google/android/gms/internal/ads/zzdit;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zze:Lcom/google/android/gms/internal/ads/zzdio;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzf:Lcom/google/android/gms/internal/ads/zzdkc;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzg:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzh:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzi:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzk:Lcom/google/android/gms/internal/ads/zzdil;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdjo;Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zze:Lcom/google/android/gms/internal/ads/zzdio;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzf()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move p1, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzc()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v2, v3, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzc()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzc()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x6

    .line 34
    if-ne v0, v1, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 37
    .line 38
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "2"

    .line 43
    .line 44
    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    const-string v1, "1"

    .line 48
    .line 49
    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdio;->zzc()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzd:Lcom/google/android/gms/internal/ads/zzdit;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzf()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdit;->zze()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v5, v4

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    const-string v1, "1098"

    .line 22
    .line 23
    const-string v2, "3011"

    .line 24
    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move v2, v3

    .line 30
    :goto_1
    const/4 v5, 0x2

    .line 31
    if-ge v2, v5, :cond_0

    .line 32
    .line 33
    aget-object v5, v1, v2

    .line 34
    .line 35
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzdkm;->zzg(Ljava/lang/String;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    instance-of v6, v5, Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    check-cast v5, Landroid/view/ViewGroup;

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    add-int/2addr v2, v0

    .line 49
    goto :goto_1

    .line 50
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzf()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .line 60
    const/4 v6, -0x2

    .line 61
    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zze:Lcom/google/android/gms/internal/ads/zzdio;

    .line 65
    .line 66
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zze()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_4

    .line 71
    .line 72
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zze()Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzj:Lcom/google/android/gms/internal/ads/zzbfv;

    .line 77
    .line 78
    if-nez v7, :cond_3

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_3
    if-nez v5, :cond_7

    .line 82
    .line 83
    iget v5, v7, Lcom/google/android/gms/internal/ads/zzbfv;->zze:I

    .line 84
    .line 85
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    move-object v5, v4

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzl()Lcom/google/android/gms/internal/ads/zzbfz;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zzbfq;

    .line 98
    .line 99
    if-nez v7, :cond_5

    .line 100
    .line 101
    move-object v1, v4

    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzl()Lcom/google/android/gms/internal/ads/zzbfz;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    check-cast v7, Lcom/google/android/gms/internal/ads/zzbfq;

    .line 108
    .line 109
    if-nez v5, :cond_6

    .line 110
    .line 111
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbfq;->zzc()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 116
    .line 117
    .line 118
    move-object v5, v4

    .line 119
    :cond_6
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbfr;

    .line 120
    .line 121
    invoke-direct {v8, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzbfr;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfq;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 122
    .line 123
    .line 124
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzed:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/CharSequence;

    .line 135
    .line 136
    invoke-virtual {v8, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    move-object v1, v8

    .line 140
    :cond_7
    :goto_3
    const/4 v2, -0x1

    .line 141
    if-nez v1, :cond_8

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    instance-of v7, v7, Landroid/view/ViewGroup;

    .line 149
    .line 150
    if-eqz v7, :cond_9

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Landroid/view/ViewGroup;

    .line 157
    .line 158
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    if-eqz v5, :cond_a

    .line 162
    .line 163
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_a
    new-instance v5, Lcom/google/android/gms/ads/formats/zza;

    .line 171
    .line 172
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzf()Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-direct {v5, v7}, Lcom/google/android/gms/ads/formats/zza;-><init>(Landroid/content/Context;)V

    .line 181
    .line 182
    .line 183
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v7, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzh()Landroid/widget/FrameLayout;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    if-eqz v7, :cond_b

    .line 199
    .line 200
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    :cond_b
    :goto_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzk()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-interface {p1, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzdkm;->zzq(Ljava/lang/String;Landroid/view/View;Z)V

    .line 208
    .line 209
    .line 210
    :goto_5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdjk;->zza:Lcom/google/android/gms/internal/ads/zzfyc;

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    move v7, v3

    .line 217
    :cond_c
    if-ge v7, v5, :cond_d

    .line 218
    .line 219
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    check-cast v8, Ljava/lang/String;

    .line 224
    .line 225
    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/zzdkm;->zzg(Ljava/lang/String;)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    instance-of v9, v8, Landroid/view/ViewGroup;

    .line 230
    .line 231
    add-int/2addr v7, v0

    .line 232
    if-eqz v9, :cond_c

    .line 233
    .line 234
    check-cast v8, Landroid/view/ViewGroup;

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_d
    move-object v8, v4

    .line 238
    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzi:Ljava/util/concurrent/Executor;

    .line 239
    .line 240
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdjl;

    .line 241
    .line 242
    invoke-direct {v5, p0, v8}, Lcom/google/android/gms/internal/ads/zzdjl;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;Landroid/view/ViewGroup;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 246
    .line 247
    .line 248
    if-nez v8, :cond_e

    .line 249
    .line 250
    goto/16 :goto_9

    .line 251
    .line 252
    :cond_e
    invoke-direct {p0, v8, v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzi(Landroid/view/ViewGroup;Z)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_f

    .line 257
    .line 258
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzs()Lcom/google/android/gms/internal/ads/zzcfb;

    .line 259
    .line 260
    .line 261
    move-result-object p0

    .line 262
    if-eqz p0, :cond_14

    .line 263
    .line 264
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzs()Lcom/google/android/gms/internal/ads/zzcfb;

    .line 265
    .line 266
    .line 267
    move-result-object p0

    .line 268
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjn;

    .line 269
    .line 270
    invoke-direct {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzdjn;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;Landroid/view/ViewGroup;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzar(Lcom/google/android/gms/internal/ads/zzbfu;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzko:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 278
    .line 279
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Ljava/lang/Boolean;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    invoke-direct {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzdjo;->zzi(Landroid/view/ViewGroup;Z)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_10

    .line 300
    .line 301
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzq()Lcom/google/android/gms/internal/ads/zzcfb;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    if-eqz p0, :cond_14

    .line 306
    .line 307
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdio;->zzq()Lcom/google/android/gms/internal/ads/zzcfb;

    .line 308
    .line 309
    .line 310
    move-result-object p0

    .line 311
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjn;

    .line 312
    .line 313
    invoke-direct {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzdjn;-><init>(Lcom/google/android/gms/internal/ads/zzdkm;Landroid/view/ViewGroup;)V

    .line 314
    .line 315
    .line 316
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzar(Lcom/google/android/gms/internal/ads/zzbfu;)V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_10
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 321
    .line 322
    .line 323
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzf()Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_11

    .line 328
    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    :cond_11
    if-eqz v4, :cond_14

    .line 334
    .line 335
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzk:Lcom/google/android/gms/internal/ads/zzdil;

    .line 336
    .line 337
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdil;->zza()Lcom/google/android/gms/internal/ads/zzbgd;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    if-eqz p0, :cond_14

    .line 342
    .line 343
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbgd;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 344
    .line 345
    .line 346
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    if-eqz p0, :cond_14

    .line 348
    .line 349
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object p0

    .line 353
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 354
    .line 355
    if-eqz p0, :cond_14

    .line 356
    .line 357
    new-instance v0, Landroid/widget/ImageView;

    .line 358
    .line 359
    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    .line 364
    .line 365
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    if-eqz p0, :cond_13

    .line 370
    .line 371
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzgr:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 372
    .line 373
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Ljava/lang/Boolean;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-nez p1, :cond_12

    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_12
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    check-cast p0, Landroid/widget/ImageView$ScaleType;

    .line 395
    .line 396
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 397
    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_13
    :goto_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdjo;->zza:Landroid/widget/ImageView$ScaleType;

    .line 401
    .line 402
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    .line 404
    .line 405
    :goto_8
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 406
    .line 407
    invoke-direct {p0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    .line 415
    .line 416
    return-void

    .line 417
    :catch_0
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 418
    .line 419
    const-string p0, "Could not get main image drawable"

    .line 420
    .line 421
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_14
    :goto_9
    return-void
.end method

.method private static zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/16 v3, 0xc

    .line 9
    .line 10
    const/16 v4, 0xb

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final zzi(Landroid/view/ViewGroup;Z)Z
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zze:Lcom/google/android/gms/internal/ads/zzdio;

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdio;->zzf()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zze:Lcom/google/android/gms/internal/ads/zzdio;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdio;->zzg()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    :goto_0
    if-nez p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzef:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 41
    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, 0x11

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    const/4 v2, -0x1

    .line 63
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    .line 69
    const/4 v2, -0x2

    .line 70
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 71
    .line 72
    .line 73
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x1

    .line 77
    return p1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzdkm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzf:Lcom/google/android/gms/internal/ads/zzdkc;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzh()Landroid/widget/FrameLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzd:Lcom/google/android/gms/internal/ads/zzdit;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdit;->zzg()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzh()Landroid/widget/FrameLayout;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkc;->zza()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcfn; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-string v0, "web view can not be obtained"

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/ads/zzdkm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzf()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzd:Lcom/google/android/gms/internal/ads/zzdit;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdit;->zza:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzi(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfbu;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    instance-of v1, v0, Landroid/app/Activity;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 27
    .line 28
    const-string p1, "Activity context is needed for policy validator."

    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzg:Lcom/google/android/gms/internal/ads/zzdkk;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzh()Landroid/widget/FrameLayout;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    :try_start_0
    const-string v2, "window"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/view/WindowManager;

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdkm;->zzh()Landroid/widget/FrameLayout;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdkk;->zza(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzb()Landroid/view/WindowManager$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, p1, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcfn; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catch_0
    move-exception p1

    .line 69
    const-string v0, "web view can not be obtained"

    .line 70
    .line 71
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdkm;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjm;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdjm;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;Lcom/google/android/gms/internal/ads/zzdkm;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjo;->zzh:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzf(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzi(Landroid/view/ViewGroup;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public final zzg(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdjo;->zzi(Landroid/view/ViewGroup;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
