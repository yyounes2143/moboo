.class Lcom/tekartik/sqflite/SqflitePlugin$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/SqflitePlugin;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/Database;

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/tekartik/sqflite/SqflitePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V

    .line 11
    .line 12
    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$1;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method
