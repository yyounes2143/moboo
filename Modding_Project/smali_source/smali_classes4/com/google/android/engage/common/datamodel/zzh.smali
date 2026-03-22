.class public final Lcom/google/android/engage/common/datamodel/zzh;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzc:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzd:I

.field private zze:Landroid/net/Uri;

.field private zzf:Ljava/lang/String;

.field private final zzg:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzh:Ljava/lang/Long;


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
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 15
    .line 16
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 21
    .line 22
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/zzh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzd:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/zzh;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/engage/common/datamodel/zzh;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzp(Lcom/google/android/engage/common/datamodel/zzh;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzq(Lcom/google/android/engage/common/datamodel/zzh;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/engage/common/datamodel/zzh;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzh:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/engage/common/datamodel/zzh;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/engage/common/datamodel/zzh;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzc(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzd(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzg:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzc:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzh(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzb:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzi(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzh;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzj(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzf:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzk(Ljava/lang/Long;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzh:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzl(I)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/zzh;->zzd:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/zzh;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzn()Lcom/google/android/engage/common/datamodel/zzj;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/zzj;-><init>(Lcom/google/android/engage/common/datamodel/zzh;Lcom/google/android/engage/common/datamodel/zzi;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
