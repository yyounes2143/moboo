.class public final Lcom/google/android/engage/service/zzaa;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# static fields
.field static final zza:Landroid/content/Intent;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final zzb:Landroid/content/Intent;

.field static zzc:Lcom/google/android/engage/service/zzaa;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final synthetic zze:I

.field private static final zzf:Lcom/google/android/gms/internal/engage/zzd;


# instance fields
.field final zzd:Lcom/google/android/gms/internal/engage/zzo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzg:Z

.field private final zzh:Z

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/engage/zzd;

    .line 2
    .line 3
    const-string v1, "AppEngageService"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/engage/zzd;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/engage/service/zzaa;->zzf:Lcom/google/android/gms/internal/engage/zzd;

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "com.google.android.engage.BIND_APP_ENGAGE_SERVICE"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v2, "com.android.vending"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/google/android/engage/service/zzaa;->zza:Landroid/content/Intent;

    .line 24
    .line 25
    new-instance v0, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v1, "com.google.android.engage.verifyapp"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/google/android/engage/service/zzaa;->zzb:Landroid/content/Intent;

    .line 37
    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/service/zzaa;->zzi:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/service/zzag;->zza(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v0, "1.5.11-debug"

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/google/android/engage/service/zzaa;->zzg:Z

    .line 26
    .line 27
    iput-boolean v2, p0, Lcom/google/android/engage/service/zzaa;->zzh:Z

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v2, "com.google.android.engage.verifyapp"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/google/android/gms/internal/engage/zzo;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/engage/zzq;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Lcom/google/android/engage/service/zzaa;->zzf:Lcom/google/android/gms/internal/engage/zzd;

    .line 45
    .line 46
    sget-object v8, Lcom/google/android/engage/service/zzaa;->zzb:Landroid/content/Intent;

    .line 47
    .line 48
    new-instance v9, Lcom/google/android/engage/service/zzs;

    .line 49
    .line 50
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v7, "AppEngageService"

    .line 54
    .line 55
    const/4 v10, 0x0

    .line 56
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/engage/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/engage/zzd;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/engage/service/zzs;Lcom/google/android/gms/internal/engage/zzj;)V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    iput-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    const-string v0, "1.5.11"

    .line 66
    .line 67
    iput-object v0, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/engage/zzs;->zza(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    new-instance v4, Lcom/google/android/gms/internal/engage/zzo;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/google/android/gms/internal/engage/zzq;->zza(Landroid/content/Context;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v6, Lcom/google/android/engage/service/zzaa;->zzf:Lcom/google/android/gms/internal/engage/zzd;

    .line 82
    .line 83
    sget-object v8, Lcom/google/android/engage/service/zzaa;->zza:Landroid/content/Intent;

    .line 84
    .line 85
    new-instance v9, Lcom/google/android/engage/service/zzs;

    .line 86
    .line 87
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v7, "AppEngageService"

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/engage/zzo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/engage/zzd;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/engage/service/zzs;Lcom/google/android/gms/internal/engage/zzj;)V

    .line 94
    .line 95
    .line 96
    iput-object v4, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/google/android/engage/service/zzaa;->zzg(Landroid/content/Context;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const v1, 0x4f936f8

    .line 103
    .line 104
    .line 105
    if-lt v0, v1, :cond_1

    .line 106
    .line 107
    move v0, v2

    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move v0, v3

    .line 110
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/engage/service/zzaa;->zzg:Z

    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/engage/service/zzaa;->zzg(Landroid/content/Context;)I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    const v0, 0x502f580

    .line 117
    .line 118
    .line 119
    if-lt p1, v0, :cond_2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    move v2, v3

    .line 123
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/engage/service/zzaa;->zzh:Z

    .line 124
    .line 125
    return-void

    .line 126
    :cond_3
    iput-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 127
    .line 128
    iput-boolean v3, p0, Lcom/google/android/engage/service/zzaa;->zzg:Z

    .line 129
    .line 130
    iput-boolean v3, p0, Lcom/google/android/engage/service/zzaa;->zzh:Z

    .line 131
    .line 132
    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/engage/service/zzaa;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/engage/service/zzaa;->zzi(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const-class v0, Lcom/google/android/engage/service/zzaa;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/google/android/engage/service/zzaa;->zzi(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/engage/service/zzaa;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/google/android/engage/service/zzaa;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/android/engage/service/zzaa;->zzc:Lcom/google/android/engage/service/zzaa;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/engage/service/zzaa;->zzc:Lcom/google/android/engage/service/zzaa;

    .line 31
    .line 32
    return-object p0
.end method

.method private static zzg(Landroid/content/Context;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "com.android.vending"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return p0

    .line 15
    :catch_0
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method private final zzh(Lcom/google/android/engage/service/zzy;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/google/android/engage/service/AppEngageException;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p1, v0}, Lcom/google/android/engage/service/AppEngageException;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance v2, Lcom/google/android/engage/service/zzt;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/engage/service/zzt;-><init>(Lcom/google/android/engage/service/zzaa;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/engage/service/zzy;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/engage/zzo;->zzt(Lcom/google/android/gms/internal/engage/zze;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Lcom/google/android/engage/service/zzp;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private static zzi(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/engage/service/zzaa;->zzc:Lcom/google/android/engage/service/zzaa;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/engage/zzs;->zza(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/engage/service/DeleteClustersRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "engage_sdk_version"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "calling_package_name"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/engage/service/zzaa;->zzi:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/engage/service/DeleteClustersRequest;->getDeleteReason()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/engage/service/DeleteClustersRequest;->getDeleteReason()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "delete_reason"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/engage/service/DeleteClustersRequest;->getSyncAcrossDevices()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v1, "delete_request_sync_across_devices"

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/engage/service/DeleteClustersRequest;->getAccountProfile()Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v2, "account_profile_account_id"

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/AccountProfile;->getAccountId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/AccountProfile;->getProfileId()Lcom/google/common/base/Optional;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/AccountProfile;->getProfileId()Lcom/google/common/base/Optional;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    const-string v2, "account_profile_user_profile_id"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/engage/service/DeleteClustersRequest;->zza()Lcom/google/common/base/Optional;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroid/os/Parcelable;

    .line 102
    .line 103
    const-string v2, "cluster_metadata"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/google/android/engage/service/ClusterMetadata;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/engage/service/ClusterMetadata;->zza()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v1, "cluster_metadata_v2"

    .line 119
    .line 120
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    new-instance p1, Lcom/google/android/engage/service/zzr;

    .line 124
    .line 125
    invoke-direct {p1, p0, v0}, Lcom/google/android/engage/service/zzr;-><init>(Lcom/google/android/engage/service/zzaa;Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/google/android/engage/service/zzaa;->zzh(Lcom/google/android/engage/service/zzy;)Lcom/google/android/gms/tasks/Task;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method

.method public final zzc()Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/engage/service/zzaa;->zzg:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "engage_sdk_version"

    .line 20
    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzi:Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "calling_package_name"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/google/android/engage/service/zzn;

    .line 32
    .line 33
    invoke-direct {v1, p0, v0}, Lcom/google/android/engage/service/zzn;-><init>(Lcom/google/android/engage/service/zzaa;Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v1}, Lcom/google/android/engage/service/zzaa;->zzh(Lcom/google/android/engage/service/zzy;)Lcom/google/android/gms/tasks/Task;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/google/android/engage/service/zzo;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final zzd(Lcom/google/android/engage/service/zzac;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/engage/service/zzaa;->zze(Lcom/google/android/engage/service/zzac;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final zze(Lcom/google/android/engage/service/zzac;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    const-string v0, "engage_sdk_version"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "calling_package_name"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/engage/service/zzaa;->zzi:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "clusters_v2"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/engage/service/zzac;->zza()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/engage/service/zzaa;->zzd:Lcom/google/android/gms/internal/engage/zzo;

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    new-instance p1, Lcom/google/android/engage/service/AppEngageException;

    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-direct {p1, p2}, Lcom/google/android/engage/service/AppEngageException;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/engage/service/zzaa;->zzh:Z

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Lcom/google/android/engage/service/zzaa;->zzf:Lcom/google/android/gms/internal/engage/zzd;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    new-array p2, p2, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v0, "Publish clusters skipped. Please upgrade your play store version to 40.8 or above."

    .line 49
    .line 50
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/engage/zzd;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    .line 52
    .line 53
    new-instance p1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_1
    new-instance p1, Lcom/google/android/engage/service/zzq;

    .line 64
    .line 65
    invoke-direct {p1, p0, p2}, Lcom/google/android/engage/service/zzq;-><init>(Lcom/google/android/engage/service/zzaa;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/engage/service/zzaa;->zzh(Lcom/google/android/engage/service/zzy;)Lcom/google/android/gms/tasks/Task;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1
.end method

.method public final zzf(Lcom/google/android/engage/service/PublishStatusRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "engage_sdk_version"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/engage/service/zzaa;->zzj:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "calling_package_name"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/engage/service/zzaa;->zzi:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "publish_status_code"

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/engage/service/PublishStatusRequest;->getStatusCode()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/google/android/engage/service/zzm;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Lcom/google/android/engage/service/zzm;-><init>(Lcom/google/android/engage/service/zzaa;Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/engage/service/zzaa;->zzh(Lcom/google/android/engage/service/zzy;)Lcom/google/android/gms/tasks/Task;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method
