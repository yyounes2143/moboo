.class public final Lcom/google/android/gms/fido/zza;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final zza:Lcom/google/android/gms/common/Feature;

.field public static final zzb:Lcom/google/android/gms/common/Feature;

.field public static final zzc:Lcom/google/android/gms/common/Feature;

.field public static final zzd:Lcom/google/android/gms/common/Feature;

.field public static final zze:Lcom/google/android/gms/common/Feature;

.field public static final zzf:Lcom/google/android/gms/common/Feature;

.field public static final zzg:Lcom/google/android/gms/common/Feature;

.field public static final zzh:Lcom/google/android/gms/common/Feature;

.field public static final zzi:Lcom/google/android/gms/common/Feature;

.field public static final zzj:Lcom/google/android/gms/common/Feature;

.field public static final zzk:Lcom/google/android/gms/common/Feature;

.field public static final zzl:Lcom/google/android/gms/common/Feature;

.field public static final zzm:Lcom/google/android/gms/common/Feature;

.field public static final zzn:Lcom/google/android/gms/common/Feature;

.field public static final zzo:Lcom/google/android/gms/common/Feature;

.field public static final zzp:Lcom/google/android/gms/common/Feature;

.field public static final zzq:Lcom/google/android/gms/common/Feature;

.field public static final zzr:Lcom/google/android/gms/common/Feature;

.field public static final zzs:Lcom/google/android/gms/common/Feature;

.field public static final zzt:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    .line 2
    .line 3
    const-string v1, "cancel_target_direct_transfer"

    .line 4
    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/fido/zza;->zza:Lcom/google/android/gms/common/Feature;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/common/Feature;

    .line 13
    .line 14
    const-string v4, "delete_credential"

    .line 15
    .line 16
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/fido/zza;->zzb:Lcom/google/android/gms/common/Feature;

    .line 20
    .line 21
    new-instance v4, Lcom/google/android/gms/common/Feature;

    .line 22
    .line 23
    const-string v5, "delete_device_public_key"

    .line 24
    .line 25
    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 26
    .line 27
    .line 28
    sput-object v4, Lcom/google/android/gms/fido/zza;->zzc:Lcom/google/android/gms/common/Feature;

    .line 29
    .line 30
    new-instance v5, Lcom/google/android/gms/common/Feature;

    .line 31
    .line 32
    const-string v6, "get_or_generate_device_public_key"

    .line 33
    .line 34
    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 35
    .line 36
    .line 37
    sput-object v5, Lcom/google/android/gms/fido/zza;->zzd:Lcom/google/android/gms/common/Feature;

    .line 38
    .line 39
    new-instance v6, Lcom/google/android/gms/common/Feature;

    .line 40
    .line 41
    const-string v7, "get_passkeys"

    .line 42
    .line 43
    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    sput-object v6, Lcom/google/android/gms/fido/zza;->zze:Lcom/google/android/gms/common/Feature;

    .line 47
    .line 48
    new-instance v7, Lcom/google/android/gms/common/Feature;

    .line 49
    .line 50
    const-string v8, "update_passkey"

    .line 51
    .line 52
    invoke-direct {v7, v8, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    sput-object v7, Lcom/google/android/gms/fido/zza;->zzf:Lcom/google/android/gms/common/Feature;

    .line 56
    .line 57
    new-instance v8, Lcom/google/android/gms/common/Feature;

    .line 58
    .line 59
    const-string v9, "is_user_verifying_platform_authenticator_available_for_credential"

    .line 60
    .line 61
    invoke-direct {v8, v9, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    sput-object v8, Lcom/google/android/gms/fido/zza;->zzg:Lcom/google/android/gms/common/Feature;

    .line 65
    .line 66
    new-instance v9, Lcom/google/android/gms/common/Feature;

    .line 67
    .line 68
    const-string v10, "is_user_verifying_platform_authenticator_available"

    .line 69
    .line 70
    invoke-direct {v9, v10, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 71
    .line 72
    .line 73
    sput-object v9, Lcom/google/android/gms/fido/zza;->zzh:Lcom/google/android/gms/common/Feature;

    .line 74
    .line 75
    new-instance v10, Lcom/google/android/gms/common/Feature;

    .line 76
    .line 77
    const-string v11, "privileged_api_list_credentials"

    .line 78
    .line 79
    const-wide/16 v12, 0x2

    .line 80
    .line 81
    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 82
    .line 83
    .line 84
    sput-object v10, Lcom/google/android/gms/fido/zza;->zzi:Lcom/google/android/gms/common/Feature;

    .line 85
    .line 86
    new-instance v11, Lcom/google/android/gms/common/Feature;

    .line 87
    .line 88
    const-string v14, "start_target_direct_transfer"

    .line 89
    .line 90
    invoke-direct {v11, v14, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    sput-object v11, Lcom/google/android/gms/fido/zza;->zzj:Lcom/google/android/gms/common/Feature;

    .line 94
    .line 95
    new-instance v14, Lcom/google/android/gms/common/Feature;

    .line 96
    .line 97
    const-string v15, "zero_party_api_register"

    .line 98
    .line 99
    const-wide/16 v2, 0x3

    .line 100
    .line 101
    invoke-direct {v14, v15, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 102
    .line 103
    .line 104
    sput-object v14, Lcom/google/android/gms/fido/zza;->zzk:Lcom/google/android/gms/common/Feature;

    .line 105
    .line 106
    new-instance v15, Lcom/google/android/gms/common/Feature;

    .line 107
    .line 108
    const-string v12, "zero_party_api_sign"

    .line 109
    .line 110
    invoke-direct {v15, v12, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 111
    .line 112
    .line 113
    sput-object v15, Lcom/google/android/gms/fido/zza;->zzl:Lcom/google/android/gms/common/Feature;

    .line 114
    .line 115
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 116
    .line 117
    const-string v3, "zero_party_api_list_discoverable_credentials"

    .line 118
    .line 119
    const-wide/16 v12, 0x2

    .line 120
    .line 121
    invoke-direct {v2, v3, v12, v13}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    sput-object v2, Lcom/google/android/gms/fido/zza;->zzm:Lcom/google/android/gms/common/Feature;

    .line 125
    .line 126
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 127
    .line 128
    const-string v12, "zero_party_api_authenticate_passkey"

    .line 129
    .line 130
    move-object v13, v0

    .line 131
    move-object/from16 v18, v1

    .line 132
    .line 133
    const-wide/16 v0, 0x1

    .line 134
    .line 135
    invoke-direct {v3, v12, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 136
    .line 137
    .line 138
    sput-object v3, Lcom/google/android/gms/fido/zza;->zzn:Lcom/google/android/gms/common/Feature;

    .line 139
    .line 140
    new-instance v12, Lcom/google/android/gms/common/Feature;

    .line 141
    .line 142
    move-object/from16 v16, v2

    .line 143
    .line 144
    const-string v2, "zero_party_api_register_passkey"

    .line 145
    .line 146
    invoke-direct {v12, v2, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    sput-object v12, Lcom/google/android/gms/fido/zza;->zzo:Lcom/google/android/gms/common/Feature;

    .line 150
    .line 151
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 152
    .line 153
    move-object/from16 v17, v3

    .line 154
    .line 155
    const-string v3, "zero_party_api_get_hybrid_client_registration_pending_intent"

    .line 156
    .line 157
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 158
    .line 159
    .line 160
    sput-object v2, Lcom/google/android/gms/fido/zza;->zzp:Lcom/google/android/gms/common/Feature;

    .line 161
    .line 162
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 163
    .line 164
    move-object/from16 v19, v2

    .line 165
    .line 166
    const-string v2, "zero_party_api_get_hybrid_client_sign_pending_intent"

    .line 167
    .line 168
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 169
    .line 170
    .line 171
    sput-object v3, Lcom/google/android/gms/fido/zza;->zzq:Lcom/google/android/gms/common/Feature;

    .line 172
    .line 173
    new-instance v2, Lcom/google/android/gms/common/Feature;

    .line 174
    .line 175
    move-object/from16 v20, v3

    .line 176
    .line 177
    const-string v3, "get_browser_hybrid_client_sign_pending_intent"

    .line 178
    .line 179
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 180
    .line 181
    .line 182
    sput-object v2, Lcom/google/android/gms/fido/zza;->zzr:Lcom/google/android/gms/common/Feature;

    .line 183
    .line 184
    new-instance v3, Lcom/google/android/gms/common/Feature;

    .line 185
    .line 186
    move-object/from16 v21, v2

    .line 187
    .line 188
    const-string v2, "get_browser_hybrid_client_registration_pending_intent"

    .line 189
    .line 190
    invoke-direct {v3, v2, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    .line 191
    .line 192
    .line 193
    sput-object v3, Lcom/google/android/gms/fido/zza;->zzs:Lcom/google/android/gms/common/Feature;

    .line 194
    .line 195
    const/16 v0, 0x13

    .line 196
    .line 197
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    .line 198
    .line 199
    const/4 v1, 0x0

    .line 200
    aput-object v13, v0, v1

    .line 201
    .line 202
    const/4 v1, 0x1

    .line 203
    aput-object v18, v0, v1

    .line 204
    .line 205
    const/4 v1, 0x2

    .line 206
    aput-object v4, v0, v1

    .line 207
    .line 208
    const/4 v1, 0x3

    .line 209
    aput-object v5, v0, v1

    .line 210
    .line 211
    const/4 v1, 0x4

    .line 212
    aput-object v6, v0, v1

    .line 213
    .line 214
    const/4 v1, 0x5

    .line 215
    aput-object v7, v0, v1

    .line 216
    .line 217
    const/4 v1, 0x6

    .line 218
    aput-object v8, v0, v1

    .line 219
    .line 220
    const/4 v1, 0x7

    .line 221
    aput-object v9, v0, v1

    .line 222
    .line 223
    const/16 v1, 0x8

    .line 224
    .line 225
    aput-object v10, v0, v1

    .line 226
    .line 227
    const/16 v1, 0x9

    .line 228
    .line 229
    aput-object v11, v0, v1

    .line 230
    .line 231
    const/16 v1, 0xa

    .line 232
    .line 233
    aput-object v14, v0, v1

    .line 234
    .line 235
    const/16 v1, 0xb

    .line 236
    .line 237
    aput-object v15, v0, v1

    .line 238
    .line 239
    const/16 v1, 0xc

    .line 240
    .line 241
    aput-object v16, v0, v1

    .line 242
    .line 243
    const/16 v1, 0xd

    .line 244
    .line 245
    aput-object v17, v0, v1

    .line 246
    .line 247
    const/16 v1, 0xe

    .line 248
    .line 249
    aput-object v12, v0, v1

    .line 250
    .line 251
    const/16 v1, 0xf

    .line 252
    .line 253
    aput-object v19, v0, v1

    .line 254
    .line 255
    const/16 v1, 0x10

    .line 256
    .line 257
    aput-object v20, v0, v1

    .line 258
    .line 259
    const/16 v1, 0x11

    .line 260
    .line 261
    aput-object v21, v0, v1

    .line 262
    .line 263
    const/16 v1, 0x12

    .line 264
    .line 265
    aput-object v3, v0, v1

    .line 266
    .line 267
    sput-object v0, Lcom/google/android/gms/fido/zza;->zzt:[Lcom/google/android/gms/common/Feature;

    .line 268
    .line 269
    return-void
.end method
