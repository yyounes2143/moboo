.class public interface abstract Landroidx/webkit/WebViewStartUpResult;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
.end annotation


# virtual methods
.method public abstract getBlockingStartUpLocations()Ljava/util/List;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NullableCollection"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/BlockingStartUpLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoBoxing"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getTotalTimeInUiThreadMillis()Ljava/lang/Long;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoBoxing"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
