.class public final Lcom/google/android/engage/common/datamodel/Image$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Landroid/net/Uri;

.field private zzb:I

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzb:I

    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzc:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zze:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzf:I

    .line 13
    .line 14
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/Image$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzf:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/Image$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzb:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/Image$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zze:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/Image$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzc:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/common/datamodel/Image$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/common/datamodel/Image$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/common/datamodel/Image;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/Image;-><init>(Lcom/google/android/engage/common/datamodel/Image$Builder;Lcom/google/android/engage/common/datamodel/zzx;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAccessibilityText(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageCropType(I)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzf:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageHeightInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzb:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageTheme(I)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zze:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageUri(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public setImageWidthInPixel(I)Lcom/google/android/engage/common/datamodel/Image$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Image$Builder;->zzc:I

    .line 2
    .line 3
    return-object p0
.end method
