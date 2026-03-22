.class public final Lcom/google/android/engage/common/datamodel/zzab;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/Long;

.field private zze:Landroid/net/Uri;

.field private zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

.field private zzg:Ljava/lang/Integer;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzj:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 15
    .line 16
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/zzab;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/engage/common/datamodel/zzab;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzg:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzu(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzv(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzw(Lcom/google/android/engage/common/datamodel/zzab;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzh(Ljava/lang/Integer;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzg:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzj(Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzf:Lcom/google/android/engage/common/datamodel/OrderReadyTimeWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzk(J)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzd:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzl(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzn(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzab;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzab;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzo()Lcom/google/android/engage/common/datamodel/zzad;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzad;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/zzad;-><init>(Lcom/google/android/engage/common/datamodel/zzab;Lcom/google/android/engage/common/datamodel/zzac;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
