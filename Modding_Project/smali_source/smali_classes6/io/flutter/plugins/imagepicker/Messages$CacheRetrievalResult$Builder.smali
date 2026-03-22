.class public final Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private paths:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
.method public build()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setType(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setError(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->paths:Ljava/util/List;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setPaths(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setError(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPaths(Ljava/util/List;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;
    .locals 0
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
            "Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->paths:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lio/flutter/plugins/imagepicker/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 2
    .line 3
    return-object p0
.end method
