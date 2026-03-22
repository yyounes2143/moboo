.class public final Lcom/google/android/engage/common/datamodel/zzk;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Z

.field private zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

.field private final zzc:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzd:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zza:Z

    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/common/datamodel/zzk;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/common/datamodel/zzk;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zza:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzc(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Lcom/google/android/engage/common/datamodel/Entity;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzk;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/engage/common/datamodel/zzk;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/common/datamodel/zzk;->zza:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzg()Lcom/google/android/engage/common/datamodel/zzm;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzm;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/zzm;-><init>(Lcom/google/android/engage/common/datamodel/zzk;Lcom/google/android/engage/common/datamodel/zzl;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
