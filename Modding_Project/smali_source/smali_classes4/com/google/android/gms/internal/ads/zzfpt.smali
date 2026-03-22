.class public final Lcom/google/android/gms/internal/ads/zzfpt;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final zza:Ljava/util/HashMap;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfpu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfnx;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfns;

.field private zzf:Lcom/google/android/gms/internal/ads/zzfpi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzfpt;->zza:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfnx;Lcom/google/android/gms/internal/ads/zzfns;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfpu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzfnx;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/ads/zzfns;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzg:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzb:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzc:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zze:Lcom/google/android/gms/internal/ads/zzfns;

    .line 18
    .line 19
    return-void
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzfpj;)Ljava/lang/Class;
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzfpj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfps;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zza()Lcom/google/android/gms/internal/ads/zzayj;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayj;->zzk()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfpt;->zza:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-object v2

    .line 22
    :cond_0
    const/16 v2, 0x7ea

    .line 23
    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zze:Lcom/google/android/gms/internal/ads/zzfns;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzc()Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfns;->zza(Ljava/io/File;)Z

    .line 31
    .line 32
    .line 33
    move-result v3
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzb()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :catch_2
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzc()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzb:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/4 v5, 0x0

    .line 79
    invoke-direct {v3, p1, v2, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 80
    .line 81
    .line 82
    const-string p1, "com.google.ccc.abuse.droidguard.DroidGuard"

    .line 83
    .line 84
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    :try_start_3
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-object p1

    .line 93
    :goto_1
    :try_start_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfps;

    .line 94
    .line 95
    const/16 v1, 0x7d8

    .line 96
    .line 97
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    :cond_2
    :try_start_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfps;

    .line 102
    .line 103
    const-string v0, "VM did not pass signature verification"

    .line 104
    .line 105
    invoke-direct {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    :catch_3
    move-exception p1

    .line 110
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfps;

    .line 111
    .line 112
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    throw p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfoa;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzg:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzf:Lcom/google/android/gms/internal/ads/zzfpi;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfpj;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzg:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpt;->zzf:Lcom/google/android/gms/internal/ads/zzfpi;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpi;->zzf()Lcom/google/android/gms/internal/ads/zzfpj;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfpj;)Z
    .locals 21
    .param p1    # Lcom/google/android/gms/internal/ads/zzfpj;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x6

    .line 7
    const/4 v5, 0x2

    .line 8
    const/4 v6, 0x1

    .line 9
    const/4 v7, 0x0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v8

    .line 14
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzfpt;->zzd(Lcom/google/android/gms/internal/ads/zzfpj;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v10
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    new-array v11, v4, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v12, Landroid/content/Context;

    .line 21
    .line 22
    aput-object v12, v11, v7

    .line 23
    .line 24
    const-class v12, Ljava/lang/String;

    .line 25
    .line 26
    aput-object v12, v11, v6

    .line 27
    .line 28
    const-class v12, [B

    .line 29
    .line 30
    aput-object v12, v11, v5

    .line 31
    .line 32
    const-class v12, Ljava/lang/Object;

    .line 33
    .line 34
    aput-object v12, v11, v3

    .line 35
    .line 36
    const-class v12, Landroid/os/Bundle;

    .line 37
    .line 38
    aput-object v12, v11, v2

    .line 39
    .line 40
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    aput-object v12, v11, v0

    .line 43
    .line 44
    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzb:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zze()[B

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    new-instance v13, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v14

    .line 63
    new-array v4, v4, [Ljava/lang/Object;

    .line 64
    .line 65
    aput-object v11, v4, v7

    .line 66
    .line 67
    const-string v11, "msa-r"

    .line 68
    .line 69
    aput-object v11, v4, v6

    .line 70
    .line 71
    aput-object v12, v4, v5

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    aput-object v5, v4, v3

    .line 75
    .line 76
    aput-object v13, v4, v2

    .line 77
    .line 78
    aput-object v14, v4, v0

    .line 79
    .line 80
    invoke-virtual {v10, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 84
    :try_start_2
    new-instance v15, Lcom/google/android/gms/internal/ads/zzfpi;

    .line 85
    .line 86
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzc:Lcom/google/android/gms/internal/ads/zzfpu;

    .line 87
    .line 88
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 89
    .line 90
    const/16 v20, 0x0

    .line 91
    .line 92
    move-object/from16 v17, p1

    .line 93
    .line 94
    move-object/from16 v18, v0

    .line 95
    .line 96
    move-object/from16 v19, v2

    .line 97
    .line 98
    invoke-direct/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzfpi;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfpu;Lcom/google/android/gms/internal/ads/zzfnx;Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfpi;->zzh()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfpi;->zze()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-nez v0, :cond_1

    .line 112
    .line 113
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzg:Ljava/lang/Object;

    .line 114
    .line 115
    monitor-enter v2
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzf:Lcom/google/android/gms/internal/ads/zzfpi;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .line 118
    if-eqz v0, :cond_0

    .line 119
    .line 120
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfpi;->zzg()V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfps;->zza()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const-wide/16 v10, -0x1

    .line 134
    .line 135
    invoke-virtual {v3, v4, v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzfnx;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 136
    .line 137
    .line 138
    :cond_0
    :goto_0
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzf:Lcom/google/android/gms/internal/ads/zzfpi;

    .line 139
    .line 140
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 142
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    sub-long/2addr v2, v8

    .line 148
    const/16 v4, 0xbb8

    .line 149
    .line 150
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnx;->zzd(IJ)Lcom/google/android/gms/tasks/Task;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 151
    .line 152
    .line 153
    return v6

    .line 154
    :catch_1
    move-exception v0

    .line 155
    goto :goto_2

    .line 156
    :catch_2
    move-exception v0

    .line 157
    goto :goto_3

    .line 158
    :goto_1
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 159
    :try_start_8
    throw v0

    .line 160
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfps;

    .line 161
    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v4, "ci: "

    .line 168
    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v3, 0xfa1

    .line 180
    .line 181
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw v2

    .line 185
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfps;

    .line 186
    .line 187
    const-string v2, "init failed"

    .line 188
    .line 189
    const/16 v3, 0xfa0

    .line 190
    .line 191
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :catch_3
    move-exception v0

    .line 196
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfps;

    .line 197
    .line 198
    const/16 v3, 0x7d4

    .line 199
    .line 200
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(ILjava/lang/Throwable;)V

    .line 201
    .line 202
    .line 203
    throw v2
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzfps; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 204
    :goto_2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 205
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 207
    .line 208
    .line 209
    move-result-wide v3

    .line 210
    sub-long/2addr v3, v8

    .line 211
    const/16 v5, 0xfaa

    .line 212
    .line 213
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfnx;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfpt;->zzd:Lcom/google/android/gms/internal/ads/zzfnx;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfps;->zza()I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 224
    .line 225
    .line 226
    move-result-wide v4

    .line 227
    sub-long/2addr v4, v8

    .line 228
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzfnx;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 229
    .line 230
    .line 231
    :goto_4
    return v7
.end method
