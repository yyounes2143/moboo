.class final Lcom/google/android/engage/books/datamodel/zzb;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final zza:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/engage/common/datamodel/zzs;

.field private final zzd:Lcom/google/common/collect/ImmutableList$Builder;

.field private zze:Landroid/net/Uri;

.field private zzf:I

.field private zzg:Lcom/google/android/engage/common/datamodel/Rating;

.field private zzh:Z

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/Long;

.field private zzk:Ljava/lang/Integer;

.field private zzl:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzs;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzc:Lcom/google/android/engage/common/datamodel/zzs;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzl:I

    .line 19
    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 25
    .line 26
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/books/datamodel/zzb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzf:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/books/datamodel/zzb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzl:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/books/datamodel/zzb;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzr(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/android/engage/common/datamodel/zzs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzc:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzs(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzt(Lcom/google/android/engage/books/datamodel/zzb;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzu(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzk:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzv(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzj:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzw(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzx(Lcom/google/android/engage/books/datamodel/zzb;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzy(Lcom/google/android/engage/books/datamodel/zzb;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzh:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zze(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzf(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzc:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzg(Ljava/util/List;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzc:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzb(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzh(Landroid/net/Uri;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zze:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzi(I)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzf:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzl:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzk(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzl(Z)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzh:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzm(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzc:Lcom/google/android/engage/common/datamodel/zzs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzs;->zzc(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzn(J)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzj:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzo(Ljava/lang/String;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzp(I)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzk:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzq(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/books/datamodel/zzb;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/books/datamodel/zzb;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method
