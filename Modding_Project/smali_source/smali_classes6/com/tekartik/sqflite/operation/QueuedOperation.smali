.class public Lcom/tekartik/sqflite/operation/QueuedOperation;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/Operation;


# direct methods
.method public constructor <init>(Lcom/tekartik/sqflite/operation/Operation;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/operation/QueuedOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/operation/Operation;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tekartik/sqflite/operation/QueuedOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/operation/QueuedOperation;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
