.class public final Landroidx/webkit/SpeculativeLoadingConfig$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/SpeculativeLoadingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMaxPrefetches:I

.field private mMaxPrerenders:I

.field private mPrefetchTTLSeconds:I


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


# virtual methods
.method public build()Landroidx/webkit/SpeculativeLoadingConfig;
    .locals 5
    .annotation build Landroidx/webkit/Profile$ExperimentalUrlPrefetch;
    .end annotation

    .line 1
    new-instance v0, Landroidx/webkit/SpeculativeLoadingConfig;

    .line 2
    .line 3
    iget v1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mPrefetchTTLSeconds:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrefetches:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrerenders:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/SpeculativeLoadingConfig;-><init>(IIILandroidx/webkit/SpeculativeLoadingConfig$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public setMaxPrefetches(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrefetches:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Max prefetches must be greater than 0"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setMaxPrerenders(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mMaxPrerenders:I

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Max prerenders must be greater than 0"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public setPrefetchTtlSeconds(I)Landroidx/webkit/SpeculativeLoadingConfig$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Landroidx/webkit/SpeculativeLoadingConfig$Builder;->mPrefetchTTLSeconds:I

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "Prefetch TTL must be greater than 0"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
