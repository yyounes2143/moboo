.class public final Lcom/google/android/gms/internal/engage/zzs;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/engage/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/engage/zzd;

    .line 2
    .line 3
    const-string v1, "PhoneskyVerificationUtils"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/engage/zzd;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 9
    .line 10
    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "Play Store package is not found."

    .line 4
    .line 5
    const-string v3, "com.android.vending"

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    sget-object p0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 20
    .line 21
    new-array v1, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v2, "Play Store package is disabled."

    .line 24
    .line 25
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/engage/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/16 v4, 0x40

    .line 35
    .line 36
    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    if-eqz p0, :cond_7

    .line 43
    .line 44
    array-length v2, p0

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    move v4, v0

    .line 55
    :goto_0
    if-ge v4, v2, :cond_5

    .line 56
    .line 57
    aget-object v5, p0, v4

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/engage/zzr;->zza([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    const-string v6, "8P1sW0EPJcslw7UzRsiXL64w-O50Ed-RBICtay1g24M"

    .line 71
    .line 72
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 79
    .line 80
    const-string v7, "dev-keys"

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v7, :cond_2

    .line 87
    .line 88
    const-string v7, "test-keys"

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    :cond_2
    const-string v6, "GXWy8XF3vIml3_MfnmSmyuKBpT3B0dWbHRR_4cgq-gA"

    .line 97
    .line 98
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    add-int/2addr v4, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    :goto_1
    return v1

    .line 108
    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/CharSequence;

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    const-string v4, ", "

    .line 141
    .line 142
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    new-array v1, v1, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object v2, v1, v0

    .line 153
    .line 154
    const-string v2, "Play Store package certs are not valid. Found these sha256 certs: [%s]."

    .line 155
    .line 156
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-array v2, v0, [Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/engage/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_7
    :goto_3
    sget-object p0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 167
    .line 168
    new-array v1, v0, [Ljava/lang/Object;

    .line 169
    .line 170
    const-string v2, "Play Store package is not signed -- possibly self-built package. Could not verify."

    .line 171
    .line 172
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/engage/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catch_0
    sget-object p0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 177
    .line 178
    new-array v1, v0, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/engage/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :catch_1
    sget-object p0, Lcom/google/android/gms/internal/engage/zzs;->zza:Lcom/google/android/gms/internal/engage/zzd;

    .line 185
    .line 186
    new-array v1, v0, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/engage/zzd;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    :goto_4
    return v0
.end method
