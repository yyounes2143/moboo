.class public final synthetic Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorker;


# direct methods
.method public synthetic constructor <init>(Lcom/tekartik/sqflite/DatabaseWorker;Lcom/tekartik/sqflite/DatabaseTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorker;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseWorker;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tekartik/sqflite/Wwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/tekartik/sqflite/DatabaseTask;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/tekartik/sqflite/DatabaseWorker;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/tekartik/sqflite/DatabaseWorker;Lcom/tekartik/sqflite/DatabaseTask;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
