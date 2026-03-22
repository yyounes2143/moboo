.class public Lcom/tekartik/sqflite/operation/MethodCallOperation;
.super Lcom/tekartik/sqflite/operation/BaseOperation;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tekartik/sqflite/operation/BaseOperation;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 5
    .line 6
    new-instance p1, Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;-><init>(Lcom/tekartik/sqflite/operation/MethodCallOperation;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwww()Lcom/tekartik/sqflite/operation/OperationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/MethodCallOperation$Result;

    .line 2
    .line 3
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    iget-object v0, v0, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodCall;->hasArgument(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/MethodCallOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
