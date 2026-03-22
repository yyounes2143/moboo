.class public final Lcom/google/android/engage/social/datamodel/Profile$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/social/datamodel/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/engage/common/datamodel/Image;

.field private zzd:Lcom/google/android/engage/common/datamodel/Image;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/social/datamodel/Profile$Builder;)Lcom/google/android/engage/common/datamodel/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/social/datamodel/Profile$Builder;)Lcom/google/android/engage/common/datamodel/Image;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/social/datamodel/Profile$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/social/datamodel/Profile$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/social/datamodel/Profile;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/social/datamodel/Profile;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/social/datamodel/Profile;-><init>(Lcom/google/android/engage/social/datamodel/Profile$Builder;Lcom/google/android/engage/social/datamodel/zzg;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAdditionalImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/Profile$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAdditionalText(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/Profile$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAvatar(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/social/datamodel/Profile$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zzc:Lcom/google/android/engage/common/datamodel/Image;

    .line 2
    .line 3
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/engage/social/datamodel/Profile$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/social/datamodel/Profile$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
