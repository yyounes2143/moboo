.class final Lcom/google/android/gms/internal/consent_sdk/zzy;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzcl;

.field private zzc:I

.field private zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzz;Lcom/google/android/gms/internal/consent_sdk/zzcl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:I

    .line 6
    .line 7
    sget-object v0, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->UNKNOWN:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcl;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzab;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzg;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzcl;

    .line 3
    .line 4
    iget v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:I

    .line 5
    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v2, v3, :cond_0

    .line 10
    .line 11
    move v3, v4

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v0

    .line 14
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zza:Lcom/google/android/gms/internal/consent_sdk/zzz;

    .line 15
    .line 16
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzh(Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v2, -0x1

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v2, :cond_b

    .line 27
    .line 28
    const/4 v2, 0x3

    .line 29
    const-string v7, "Invalid response from server."

    .line 30
    .line 31
    const/4 v8, 0x2

    .line 32
    packed-switch v3, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 36
    .line 37
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzc:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "Publisher misconfiguration: "

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzc:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "Invalid response from server: "

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v4, v1}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :pswitch_2
    iput v4, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:I

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_3
    iput v8, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:I

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_4
    iput v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:I

    .line 84
    .line 85
    :goto_1
    iget v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzg:I

    .line 86
    .line 87
    add-int/lit8 v3, v2, -0x1

    .line 88
    .line 89
    if-eqz v2, :cond_a

    .line 90
    .line 91
    if-eq v3, v4, :cond_2

    .line 92
    .line 93
    if-ne v3, v8, :cond_1

    .line 94
    .line 95
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->NOT_REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 96
    .line 97
    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 101
    .line 102
    invoke-direct {v0, v4, v7}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0

    .line 106
    :cond_2
    sget-object v2, Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;->REQUIRED:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 107
    .line 108
    iput-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 109
    .line 110
    :goto_2
    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zza:Ljava/lang/String;

    .line 111
    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    move-object v3, v6

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;

    .line 117
    .line 118
    iget-object v7, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzb:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/consent_sdk/zzbq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :goto_3
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzc(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    new-instance v7, Ljava/util/HashSet;

    .line 128
    .line 129
    iget-object v9, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/util/List;

    .line 130
    .line 131
    invoke-direct {v7, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzj(Ljava/util/Set;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v1, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_9

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lcom/google/android/gms/internal/consent_sdk/zzck;

    .line 154
    .line 155
    iget v7, v2, Lcom/google/android/gms/internal/consent_sdk/zzck;->zzb:I

    .line 156
    .line 157
    add-int/lit8 v9, v7, -0x1

    .line 158
    .line 159
    if-eqz v7, :cond_8

    .line 160
    .line 161
    if-eqz v9, :cond_5

    .line 162
    .line 163
    if-eq v9, v4, :cond_7

    .line 164
    .line 165
    if-eq v9, v8, :cond_6

    .line 166
    .line 167
    :cond_5
    move-object v7, v6

    .line 168
    goto :goto_5

    .line 169
    :cond_6
    const-string v7, "clear"

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_7
    const-string v7, "write"

    .line 173
    .line 174
    :goto_5
    if-eqz v7, :cond_4

    .line 175
    .line 176
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zza(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zze;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    iget-object v2, v2, Lcom/google/android/gms/internal/consent_sdk/zzck;->zza:Ljava/lang/String;

    .line 181
    .line 182
    invoke-static {v5}, Lcom/google/android/gms/internal/consent_sdk/zzz;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzz;)Lcom/google/android/gms/internal/consent_sdk/zzao;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    new-array v11, v4, [Lcom/google/android/gms/internal/consent_sdk/zzd;

    .line 187
    .line 188
    aput-object v10, v11, v0

    .line 189
    .line 190
    invoke-virtual {v9, v7, v2, v11}, Lcom/google/android/gms/internal/consent_sdk/zze;->zzb(Ljava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/consent_sdk/zzd;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_8
    throw v6

    .line 195
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzab;

    .line 196
    .line 197
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzc:I

    .line 198
    .line 199
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzy;->zzd:Lcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;

    .line 200
    .line 201
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/consent_sdk/zzab;-><init>(ILcom/google/android/ump/ConsentInformation$PrivacyOptionsRequirementStatus;Lcom/google/android/gms/internal/consent_sdk/zzbq;Lcom/google/android/gms/internal/consent_sdk/zzaa;)V

    .line 202
    .line 203
    .line 204
    return-object v0

    .line 205
    :cond_a
    throw v6

    .line 206
    :cond_b
    throw v6

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
