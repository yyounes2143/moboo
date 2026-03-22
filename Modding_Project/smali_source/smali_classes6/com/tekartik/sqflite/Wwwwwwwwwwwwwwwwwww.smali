.class public final synthetic Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwww:Z

.field public final synthetic Wwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwww:Z

    .line 17
    .line 18
    iput p8, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodCall;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwww:Z

    .line 14
    .line 15
    iget v7, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    invoke-static/range {v0 .. v7}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
