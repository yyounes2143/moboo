.class public Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lorg/chromium/support_lib_boundary/SpeculativeLoadingConfigBoundaryInterface;


# instance fields
.field private final mSpeculativeLoadingConfig:Landroidx/webkit/SpeculativeLoadingConfig;


# direct methods
.method public constructor <init>(Landroidx/webkit/SpeculativeLoadingConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;->mSpeculativeLoadingConfig:Landroidx/webkit/SpeculativeLoadingConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMaxPrefetches()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;->mSpeculativeLoadingConfig:Landroidx/webkit/SpeculativeLoadingConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/SpeculativeLoadingConfig;->getMaxPrefetches()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaxPrerenders()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;->mSpeculativeLoadingConfig:Landroidx/webkit/SpeculativeLoadingConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/SpeculativeLoadingConfig;->getMaxPrerenders()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPrefetchTTLSeconds()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/SpeculativeLoadingConfigAdapter;->mSpeculativeLoadingConfig:Landroidx/webkit/SpeculativeLoadingConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/SpeculativeLoadingConfig;->getPrefetchTtlSeconds()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
