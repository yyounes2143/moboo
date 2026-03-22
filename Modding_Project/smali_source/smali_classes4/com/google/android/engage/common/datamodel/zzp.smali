.class public final Lcom/google/android/engage/common/datamodel/zzp;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzk;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzk;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzp;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/zzp;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzp;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/engage/common/datamodel/SignInCardEntity;)Lcom/google/android/engage/common/datamodel/zzp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzp;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzd(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Lcom/google/android/engage/common/datamodel/UserSettingsCardEntity;)Lcom/google/android/engage/common/datamodel/zzp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzp;->zza:Lcom/google/android/engage/common/datamodel/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzk;->zzd(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd()Lcom/google/android/engage/common/datamodel/EngagementCluster;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/EngagementCluster;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/EngagementCluster;-><init>(Lcom/google/android/engage/common/datamodel/zzp;Lcom/google/android/engage/common/datamodel/zzq;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
