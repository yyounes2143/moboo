.class public final Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/imagepicker/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheRetrievalResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult$Builder;
    }
.end annotation


# instance fields
.field private error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private paths:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
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
    .annotation build Landroidx/annotation/NonNull;
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

.method public static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;
    .locals 2
    .param p0    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setType(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setError(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->setPaths(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 20
    .line 21
    iget-object v3, p1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 30
    .line 31
    iget-object v3, p1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 40
    .line 41
    iget-object p1, p1, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    return v0

    .line 50
    :cond_2
    :goto_0
    return v1
.end method

.method public getError()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v3, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public setError(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;)V
    .locals 0
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 2
    .line 3
    return-void
.end method

.method public setPaths(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"paths\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setType(Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;)V
    .locals 1
    .param p1    # Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"type\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public toList()Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->type:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalType;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->error:Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalError;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/imagepicker/Messages$CacheRetrievalResult;->paths:Ljava/util/List;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
