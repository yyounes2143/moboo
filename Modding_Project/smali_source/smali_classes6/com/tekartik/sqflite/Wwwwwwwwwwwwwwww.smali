.class public final synthetic Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;


# direct methods
.method public synthetic constructor <init>(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
