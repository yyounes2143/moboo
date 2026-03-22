.class public Lcom/tekartik/sqflite/operation/BatchOperation;
.super Lcom/tekartik/sqflite/operation/BaseOperation;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;-><init>(Lcom/tekartik/sqflite/operation/BatchOperation;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {p1, v1, v2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 9
    .line 10
    const-string v2, "result"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    const-string v3, "code"

    .line 16
    .line 17
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, "message"

    .line 25
    .line 26
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 32
    .line 33
    const-string v3, "data"

    .line 34
    .line 35
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    const-string v2, "error"

    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/operation/OperationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/BatchOperation$BatchOperationResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    const-string v1, "method"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/String;

    .line 10
    .line 11
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/BatchOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
