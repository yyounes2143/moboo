.class public Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/audio/datamodel/zza;

.field private zzb:Landroid/net/Uri;

.field private zzc:Ljava/lang/Boolean;

.field private zzd:Ljava/lang/Boolean;

.field private zze:I

.field private zzf:Lcom/google/android/engage/common/datamodel/Price;

.field private zzg:Lcom/google/android/engage/common/datamodel/Rating;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private final zzj:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzk:Ljava/lang/Boolean;

.field private zzl:Ljava/lang/Boolean;

.field private zzm:Ljava/lang/Boolean;

.field private zzn:Ljava/lang/Boolean;

.field private final zzo:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/audio/datamodel/zza;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/audio/datamodel/zza;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 22
    .line 23
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zze:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/audio/datamodel/zza;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzc:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzd:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzn:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzk:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzl:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzm:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzn(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzo(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;)",
            "Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzj:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zza(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;)",
            "Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzb(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzo:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity;-><init>(Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;Lcom/google/android/engage/audio/datamodel/zzd;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzb:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCallout(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCalloutFinePrint(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzi:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDownloadedOnDevice(Z)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzc:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzd(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setExplicitContent(Z)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzd:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setIsArtist(Ljava/lang/Boolean;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzn:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsBook(Z)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzk:Ljava/lang/Boolean;

    .line 6
    .line 7
    return-object p0
.end method

.method public setIsTalk(Ljava/lang/Boolean;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzl:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsVideoSupported(Ljava/lang/Boolean;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzm:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLastEngagementTimeMillis(J)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/engage/audio/datamodel/zza;->zze(J)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setListenNextType(I)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zze:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzf(Ljava/lang/String;)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setPrice(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgressPercentComplete(I)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zza:Lcom/google/android/engage/audio/datamodel/zza;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/audio/datamodel/zza;->zzg(I)Lcom/google/android/engage/audio/datamodel/zza;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setRating(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/audio/datamodel/GenericAudioEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method
