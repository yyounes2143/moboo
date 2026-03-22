.class public abstract Lcom/tekartik/sqflite/operation/BaseOperation;
.super Lcom/tekartik/sqflite/operation/BaseReadOperation;
.source "Proguard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseReadOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract Wwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/operation/OperationResult;
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BaseOperation;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/operation/OperationResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/tekartik/sqflite/operation/OperationResult;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tekartik/sqflite/operation/BaseOperation;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/operation/OperationResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/tekartik/sqflite/operation/OperationResult;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
