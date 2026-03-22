.class public Lcom/tencent/thumbplayer/tcmedia/tplayer/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;,
        Lcom/tencent/thumbplayer/tcmedia/tplayer/b$b;
    }
.end annotation


# static fields
.field private static final F:Landroid/util/SparseIntArray;

.field private static a:Ljava/lang/String; = "api call:"

.field private static v:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:J

.field private B:I

.field private C:I

.field private D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

.field private E:Z

.field private final b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

.field private c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

.field private d:Lcom/tencent/thumbplayer/tcmedia/c/a;

.field private e:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

.field private f:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/c;

.field private g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

.field private h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Looper;

.field private k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

.field private l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private s:J

.field private t:J

.field private u:Lcom/tencent/thumbplayer/tcmedia/e/a;

.field private w:Ljava/util/concurrent/atomic/AtomicInteger;

.field private x:Z

.field private y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

.field private z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    new-instance v0, Landroid/util/SparseIntArray;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->F:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    const/16 v1, 0x6a

    .line 18
    .line 19
    const/16 v2, 0x3ed

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    const/16 v1, 0x69

    .line 25
    .line 26
    const/16 v2, 0x3ee

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 8

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->n:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->o:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->p:I

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v6, 0x3e8

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->x:Z

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->z:Ljava/util/Map;

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    iput-boolean v4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->E:Z

    const-string v2, "TPPlayer"

    if-eqz p4, :cond_0

    new-instance v3, Lcom/tencent/thumbplayer/tcmedia/e/b;

    invoke-direct {v3, p4, v2}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/e/b;

    sget-object v4, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ThumbPlayer"

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->x:Z

    move-object v6, v1

    :goto_0
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-direct {v1, v6}, Lcom/tencent/thumbplayer/tcmedia/e/a;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v2, "create TPPlayer"

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->isDataReportEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->isPlayerReportEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    :goto_1
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

    invoke-interface {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/a;)V

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/c;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/c;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/c;

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "stime"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$b;

    invoke-direct {v7, p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-static {v6, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/e;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/a;)Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$l;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$m;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$a;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$n;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$o;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$b;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$k;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$e;)V

    invoke-interface {v6, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$d;)V

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, p2

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    move-result-object v1

    const-string v2, "TP-workthread"

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->j:Landroid/os/Looper;

    if-nez p3, :cond_5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->j:Landroid/os/Looper;

    invoke-direct {v1, p0, p0, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Landroid/os/Looper;)V

    :goto_5
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    goto :goto_6

    :cond_4
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    invoke-direct {v1, p0, p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V

    goto :goto_5

    :cond_5
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    invoke-direct {v1, p0, p0, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Landroid/os/Looper;)V

    goto :goto_5

    :goto_6
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "etime"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->j:Landroid/os/Looper;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/c/c;->a(Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/tplayer/a;)Lcom/tencent/thumbplayer/tcmedia/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v1, v7}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/ITPPlayListener;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/a;

    invoke-direct {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/a;-><init>()V

    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->q:Ljava/util/ArrayList;

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getNewReportEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    new-instance v2, Lcom/tencent/thumbplayer/tcmedia/common/a;

    invoke-direct {v2, v6}, Lcom/tencent/thumbplayer/tcmedia/common/a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;)V

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(Lcom/tencent/thumbplayer/tcmedia/tplayer/a/a/a;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a()V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/a;)V

    :cond_6
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->p:I

    return p1
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/r;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private a(JLjava/lang/String;)J
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->z:Ljava/util/Map;

    iget-wide v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", convert opaque("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") => uniqueId("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->r:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;JLjava/lang/String;)J
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateStartAndSkipEndTimeMsForDownloadParam, startTimeMs:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipEndTimeMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;-><init>()V

    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(II)Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getDownloadPraramList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    invoke-virtual {v3, p2}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->setStarTimeMS(I)V

    invoke-virtual {v3, p3}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->setEndTimeMS(I)V

    goto :goto_0

    :cond_2
    return-object p1

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;->getBuilder()Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(II)Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/c/a;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    return-object p0
.end method

.method private a(I)V
    .locals 2
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo$TPPlayerDetailInfoType;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4e8

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;

    invoke-direct {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    .line 10
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "etime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "reason"

    invoke-virtual {v0, v3, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code"

    invoke-virtual {v0, v3, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v7

    const/16 v3, 0x6c

    const-string v6, ""

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    iget-object p1, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->h()V

    return-void
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private a(IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/a;->a(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(IJJLjava/lang/Object;)V
    .locals 6

    .line 13
    const/16 p2, 0xc8

    const/4 p3, 0x4

    const-string v0, "stime"

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p1, p3}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "format"

    invoke-virtual {p1, p3, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "ptime"

    invoke-virtual {p1, p3, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const-string p2, "url"

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x72

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 p2, 0xc9

    const-string v1, "etime"

    if-ne p1, p2, :cond_1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->f()V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x73

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    move-object p2, p1

    return-void

    :cond_1
    move-object p2, p0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    instance-of p1, p6, Ljava/lang/Long;

    if-eqz p1, :cond_2

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    goto :goto_0

    :cond_2
    const-wide/16 p3, -0x1

    :goto_0
    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p5, "switch definition finish defId:"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const-wide/16 p5, 0x0

    cmp-long p1, p3, p5

    if-lez p1, :cond_3

    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p1, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(J)V

    :cond_3
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string p5, "switch"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p5, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x79

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_4
    const/16 p2, 0x6a

    if-ne p1, p2, :cond_5

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x69

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_5
    const/16 p2, 0x1f5

    if-ne p1, p2, :cond_6

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/16 p2, 0x75

    const/4 p3, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    const/16 p2, 0x6b

    if-ne p1, p2, :cond_7

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x77

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_7
    if-ne p1, p3, :cond_8

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string p2, "opaque"

    invoke-virtual {p1, p2, p6}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const-string p2, "code"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x7b

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_8
    const/16 p2, 0x65

    if-ne p1, p2, :cond_9

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object p6

    const/16 p2, 0x7c

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    move-object p2, p1

    return-void

    :cond_9
    move-object p2, p0

    const/16 p3, 0x1f9

    if-ne p1, p3, :cond_a

    instance-of p1, p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;

    if-eqz p1, :cond_a

    check-cast p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;

    iget-object p1, p2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "TPMediaDrmInfo secureDecoder:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;->supportSecureDecoder:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " secureDecrypt:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;->supportSecureDecrypt:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " componentName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " drmType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p6, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPMediaDrmInfo;->drmType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    .line 14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    .locals 2

    .line 15
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamBoolean()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->n:Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setPlayerOptionalParam, use p2p proxy, OPTION_ID_BEFORE_BOOLEAN_USE_PROXY="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x1fc

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamBoolean()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    iput-boolean p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->o:Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    move-result-object p1

    iget-wide v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->B:I

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamLong()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;

    move-result-object p1

    iget-wide v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamLong;->value:J

    long-to-int p1, v0

    iput p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v0

    const/16 v1, 0x1fe

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamBoolean()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamBoolean;->value:Z

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPCodecUtils;->enableDrmL3(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->onDetailInfo(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayer;Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;II)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;IIILjava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;IIILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;IJJLjava/lang/Object;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IJJLjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Landroid/os/Message;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    .line 23
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "handleSelectAudioTrack, proxy is not enable"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSelectAudioTrack, audioTrack url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->paramData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getAudioTrackKeyId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    :goto_1
    invoke-interface {v1, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/String;IZ)V
    .locals 1

    .line 24
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$u;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->b(I)V

    invoke-virtual {v0, p3}, Lcom/tencent/thumbplayer/tcmedia/d/b$u;->a(Z)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;)[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    return-object p1
.end method

.method private b(JLjava/lang/String;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", invalid uniqueId"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->z:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", convert uniqueId("

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") => opaque("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-wide v0
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->s:J

    return-wide p1
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/adapter/a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    return-object p0
.end method

.method private b(II)Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;
    .locals 2

    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->setStarTimeMS(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->setEndTimeMS(I)V

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .line 6
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->F:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(I)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c(I)V

    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;Ljava/lang/Object;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 4

    .line 9
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string v0, "handleAudioTrackProxy, proxy not enable and use orinal url"

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;

    iget-object v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->paramData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v2, 0x2

    iget-object v3, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->audioTrackUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(ILjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerMsg$TPAudioTrackInfo;->proxyUrl:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$p;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$p;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->t:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/e/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reopenPlayer has exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private c(I)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo$TPPlayerDetailInfoType;
        .end annotation
    .end param

    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPPlayerDetailInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(I)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->k()V

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "etime"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v6

    const/16 v2, 0x6b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->h()V

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->r:J

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->s:J

    iput-wide v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->t:J

    return-void
.end method

.method public static synthetic d(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->f()V

    return-void
.end method

.method public static synthetic e(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/tplayer/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    return-object p0
.end method

.method private e()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->isUseP2P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic f(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->p:I

    return p0
.end method

.method private f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    return-void
.end method

.method public static synthetic g(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Lcom/tencent/thumbplayer/tcmedia/c/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    return-object p0
.end method

.method private g()V
    .locals 4

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;-><init>()V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lcom/tencent/thumbplayer/tcmedia/tplayer/e$a;->a:J

    const/16 v1, 0x3f1

    const/4 v2, 0x0

    const/16 v3, 0x105

    invoke-direct {p0, v3, v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method private h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic h(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->o:Z

    return p0
.end method

.method public static synthetic i(Lcom/tencent/thumbplayer/tcmedia/tplayer/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->j:Landroid/os/Looper;

    return-object v0
.end method

.method public addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addAudioTrackSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)V

    return-void
.end method

.method public addAudioTrackSource(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addAudioTrackSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", downloadParamData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {v1, v2, p3}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildObject(ILjava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v1, p1, p3, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    const-string p2, "handleAddAudioSource, illegal argument."

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        c = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addSubtitleSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)V

    return-void
.end method

.method public addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        c = true
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "addSubtitleSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", downloadParamData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v3, 0x3

    invoke-interface {v2, v3, p1, p4}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(ILjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/tcmedia/api/proxy/TPDownloadParamData;->getUrlCdnidHttpHeaderList()Ljava/util/ArrayList;

    move-result-object p4

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v3, v2, p4, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string p4, "stime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p2

    const-string p4, "etime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p2

    const-string p4, "url"

    invoke-virtual {p2, p4, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const-string p2, "name"

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v2, 0x76

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :goto_3
    iget-object p2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public captureVideo(Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureParams;Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureCallBack;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        a = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "captureVideo, params:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", captureCallBack:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureParams;Lcom/tencent/thumbplayer/tcmedia/api/TPCaptureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public deselectTrack(IJ)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "deselectTrack, trackIndex:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", opaque:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public enableTPAssetResourceLoader(Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoaderListener;Landroid/os/Looper;)V
    .locals 2
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/a;->c()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/c/a/b;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->l:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->a()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a/b;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/resourceloader/ITPAssetResourceLoaderListener;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/c/a/a;->a()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public getBufferPercent()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->p()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 22
    .line 23
    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->o()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    long-to-float v0, v0

    .line 29
    const/high16 v1, 0x42c80000    # 100.0f

    .line 30
    .line 31
    mul-float/2addr v0, v1

    .line 32
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    long-to-float v1, v1

    .line 39
    div-float/2addr v0, v1

    .line 40
    float-to-int v0, v0

    .line 41
    return v0
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->o()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getExtendReportController()Lcom/tencent/thumbplayer/tcmedia/api/reportv2/ITPExtendReportController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPdtTimeMs(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getDurationMs()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    cmp-long v0, p1, v3

    .line 16
    .line 17
    if-ltz v0, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    .line 20
    .line 21
    array-length p2, p1

    .line 22
    add-int/lit8 p2, p2, -0x1

    .line 23
    .line 24
    aget-object p1, p1, p2

    .line 25
    .line 26
    iget-wide p1, p1, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeEndMS:J

    .line 27
    .line 28
    return-wide p1

    .line 29
    :cond_1
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v0, p1, v3

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-gtz v0, :cond_2

    .line 35
    .line 36
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    .line 37
    .line 38
    aget-object p1, p1, v3

    .line 39
    .line 40
    iget-wide p1, p1, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeStartMS:J

    .line 41
    .line 42
    return-wide p1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    .line 44
    .line 45
    array-length v4, v0

    .line 46
    :goto_0
    if-ge v3, v4, :cond_4

    .line 47
    .line 48
    aget-object v5, v0, v3

    .line 49
    .line 50
    iget v6, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->durationStart:F

    .line 51
    .line 52
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 53
    .line 54
    mul-float v8, v6, v7

    .line 55
    .line 56
    float-to-long v8, v8

    .line 57
    cmp-long v8, p1, v8

    .line 58
    .line 59
    if-ltz v8, :cond_3

    .line 60
    .line 61
    iget v8, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->durationEnd:F

    .line 62
    .line 63
    mul-float/2addr v8, v7

    .line 64
    float-to-long v8, v8

    .line 65
    cmp-long v8, p1, v8

    .line 66
    .line 67
    if-gtz v8, :cond_3

    .line 68
    .line 69
    iget-wide v0, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeStartMS:J

    .line 70
    .line 71
    mul-float/2addr v6, v7

    .line 72
    float-to-long v2, v6

    .line 73
    sub-long/2addr p1, v2

    .line 74
    add-long/2addr v0, p1

    .line 75
    iget-wide p1, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeEndMS:J

    .line 76
    .line 77
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    return-wide p1

    .line 82
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    :goto_1
    return-wide v1
.end method

.method public getPlayableDurationMs()J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->s:J

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-lez v4, :cond_0

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->t:J

    .line 16
    .line 17
    cmp-long v2, v4, v2

    .line 18
    .line 19
    if-lez v2, :cond_0

    .line 20
    .line 21
    long-to-double v0, v0

    .line 22
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 23
    .line 24
    mul-double/2addr v0, v2

    .line 25
    long-to-double v2, v4

    .line 26
    div-double/2addr v0, v2

    .line 27
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->n()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    long-to-double v2, v2

    .line 34
    mul-double/2addr v0, v2

    .line 35
    double-to-long v0, v0

    .line 36
    return-wide v0

    .line 37
    :cond_0
    iget-wide v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->r:J

    .line 38
    .line 39
    return-wide v0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 41
    .line 42
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->p()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    return-wide v0
.end method

.method public getPlayerProxy()Lcom/tencent/thumbplayer/tcmedia/api/proxy/ITPPlayerProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayerType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPositionMs(J)J
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->D:[Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    if-nez v3, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v3, v0

    .line 12
    add-int/lit8 v3, v3, -0x1

    .line 13
    .line 14
    aget-object v3, v0, v3

    .line 15
    .line 16
    iget-wide v3, v3, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeEndMS:J

    .line 17
    .line 18
    cmp-long v3, p1, v3

    .line 19
    .line 20
    if-ltz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getDurationMs()J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    return-wide p1

    .line 27
    :cond_1
    const/4 v3, 0x0

    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    iget-wide v4, v4, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeStartMS:J

    .line 31
    .line 32
    cmp-long v4, p1, v4

    .line 33
    .line 34
    if-gtz v4, :cond_2

    .line 35
    .line 36
    const-wide/16 p1, 0x0

    .line 37
    .line 38
    return-wide p1

    .line 39
    :cond_2
    array-length v4, v0

    .line 40
    :goto_0
    if-ge v3, v4, :cond_4

    .line 41
    .line 42
    aget-object v5, v0, v3

    .line 43
    .line 44
    iget-wide v6, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeStartMS:J

    .line 45
    .line 46
    cmp-long v8, p1, v6

    .line 47
    .line 48
    if-ltz v8, :cond_3

    .line 49
    .line 50
    iget-wide v8, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->pdtTimeEndMS:J

    .line 51
    .line 52
    cmp-long v8, p1, v8

    .line 53
    .line 54
    if-gtz v8, :cond_3

    .line 55
    .line 56
    iget v0, v5, Lcom/tencent/thumbplayer/tcmedia/core/downloadproxy/api/TPDLProxyMsg$TPPDTInfo;->durationStart:F

    .line 57
    .line 58
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 59
    .line 60
    mul-float/2addr v0, v1

    .line 61
    float-to-long v0, v0

    .line 62
    sub-long/2addr p1, v6

    .line 63
    add-long/2addr v0, p1

    .line 64
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getDurationMs()J

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    return-wide p1

    .line 73
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    :goto_1
    return-wide v1
.end method

.method public getProgramInfo()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->t()[Lcom/tencent/thumbplayer/tcmedia/api/TPProgramInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPropertyLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getReportManager()Lcom/tencent/thumbplayer/tcmedia/api/report/ITPBusinessReportManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->f:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/c;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->r()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->q()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public pause()V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "pause"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->j()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "stime"

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    const/16 v2, 0x6a

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object v1, p0

    .line 59
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    move-object v1, p0

    .line 73
    :goto_0
    iget-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public pauseDownload()V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "pauseDownload"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x1f6

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 39
    .line 40
    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->h()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public prepareAsync()V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "_"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getPlatform()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/16 v0, 0x3eb

    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "prepareAsync"

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/report/b;->c()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 79
    :goto_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 80
    .line 81
    if-eqz v2, :cond_1

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->a(Z)V

    .line 84
    .line 85
    .line 86
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 87
    .line 88
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->i()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->h()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-direct {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :try_start_1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 107
    .line 108
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "stime"

    .line 112
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 114
    .line 115
    .line 116
    move-result-wide v3

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const-string v2, "url"

    .line 126
    .line 127
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-string v2, "p2p"

    .line 134
    .line 135
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "flowid"

    .line 148
    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 154
    .line 155
    .line 156
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 157
    const/16 v2, 0x66

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v4, 0x0

    .line 161
    const/4 v5, 0x0

    .line 162
    move-object v1, p0

    .line 163
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :catch_1
    move-exception v0

    .line 171
    goto :goto_2

    .line 172
    :catch_2
    move-exception v0

    .line 173
    move-object v1, p0

    .line 174
    :goto_2
    iget-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public release()V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        a = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "release"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->m()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "etime"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "reason"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/16 v2, 0x70

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v1, p0

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a()V

    .line 76
    .line 77
    .line 78
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 79
    .line 80
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->e()V

    .line 81
    .line 82
    .line 83
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->q:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    .line 87
    .line 88
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/a;->c()V

    .line 94
    .line 95
    .line 96
    iput-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 97
    .line 98
    :cond_0
    const-wide/16 v3, -0x1

    .line 99
    .line 100
    iput-wide v3, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->r:J

    .line 101
    .line 102
    iput-wide v3, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->s:J

    .line 103
    .line 104
    iput-wide v3, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->t:J

    .line 105
    .line 106
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a()Lcom/tencent/thumbplayer/tcmedia/utils/o;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    iget-object v3, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->i:Landroid/os/HandlerThread;

    .line 111
    .line 112
    iget-object v4, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    .line 113
    .line 114
    invoke-virtual {v0, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/utils/o;->a(Landroid/os/HandlerThread;Landroid/os/Handler;)V

    .line 115
    .line 116
    .line 117
    iput-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->i:Landroid/os/HandlerThread;

    .line 118
    .line 119
    iput-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    .line 120
    .line 121
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h:Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;

    .line 122
    .line 123
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/plugins/b;->c()V

    .line 124
    .line 125
    .line 126
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->y:Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;

    .line 127
    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a/g;->b()V

    .line 131
    .line 132
    .line 133
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        a = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "reset"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->x:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a()Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a()Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->l()V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "etime"

    .line 89
    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "reason"

    .line 100
    .line 101
    invoke-virtual {v0, v3, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const/16 v3, 0x71

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x0

    .line 113
    const/4 v6, 0x0

    .line 114
    move-object v2, p0

    .line 115
    invoke-direct/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 119
    .line 120
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->d()V

    .line 121
    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    iput v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->p:I

    .line 125
    .line 126
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->q:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    .line 130
    .line 131
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->g:Lcom/tencent/thumbplayer/tcmedia/c/a/a;

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a/a;->b()V

    .line 136
    .line 137
    .line 138
    :cond_1
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->k:Lcom/tencent/thumbplayer/tcmedia/tplayer/b$a;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_2
    const-wide/16 v3, -0x1

    .line 147
    .line 148
    iput-wide v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->r:J

    .line 149
    .line 150
    iput-wide v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->s:J

    .line 151
    .line 152
    iput-wide v3, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->t:J

    .line 153
    .line 154
    iput-boolean v1, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->n:Z

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    iput-boolean v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->o:Z

    .line 158
    .line 159
    iput v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->B:I

    .line 160
    .line 161
    iput v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    .line 162
    .line 163
    iget-object v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->z:Ljava/util/Map;

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 166
    .line 167
    .line 168
    const-wide/16 v0, 0x0

    .line 169
    .line 170
    iput-wide v0, v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->A:J

    .line 171
    .line 172
    return-void
.end method

.method public resumeDownload()V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "resumeDownload"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->i()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;-><init>()V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x1f6

    .line 36
    .line 37
    const-wide/16 v2, 0x1

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 44
    .line 45
    invoke-interface {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public seekTo(I)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seekTo, positionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(I)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "stime"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "pstime"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x6d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(II)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "seekTo, positionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(I)V

    :goto_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "stime"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "format"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "pstime"

    invoke-virtual {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x6d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public selectProgram(IJ)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "selectProgram, programIndex:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", opaque:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 37
    .line 38
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->c(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public selectTrack(IJ)V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "selectTrack, trackIndex:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", opaque:"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    const-string v0, "selectTrack"

    .line 37
    .line 38
    invoke-direct {p0, p2, p3, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(JLjava/lang/String;)J

    .line 39
    .line 40
    .line 41
    move-result-wide p2

    .line 42
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    array-length v1, v0

    .line 51
    if-le v1, p1, :cond_0

    .line 52
    .line 53
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "opaque"

    .line 59
    .line 60
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "tracktype"

    .line 69
    .line 70
    aget-object v3, v0, p1

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->getTrackType()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v2, "name"

    .line 85
    .line 86
    aget-object v0, v0, p1

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "stime"

    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v2

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    const/16 v2, 0x7a

    .line 115
    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    move-object v1, p0

    .line 120
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :goto_0
    move-object p1, v0

    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    .line 128
    move-object v1, p0

    .line 129
    goto :goto_0

    .line 130
    :cond_0
    move-object v1, p0

    .line 131
    :goto_1
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 132
    .line 133
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :goto_2
    iget-object p2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public setAudioGainRatio(F)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setAudioGainRatio, gainRatio:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setAudioNormalizeVolumeParams(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setAudioNormalizeVolumeParams, audioNormalizeVolumeParams:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, AssetFileDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/content/res/AssetFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p0, v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, ParcelFileDescriptor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V
    .locals 5
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 3
    if-eqz p1, :cond_6

    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->getDrmAllProperties()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->getDrmAllProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->getDrmType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->getDrmPlayUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drm_property_license_url"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->getDrmProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/config/TPPlayerConfig;->getProxyDataDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaDRMAsset;->setOfflineKeySetId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setOfflineKeySetId exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , drm asset url is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , drm property is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;IZ)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, ITPMediaAsset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "taskInfo_get_metadata_play_offset"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetDataSource mediaAsset="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    :goto_3
    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;IZ)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleSetDataSource originalUrl="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object v0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "taskInfo_get_metadata_play_offset"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetDataSource selfPlayerUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetDataSource systemPlayerUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;)V

    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error : setDataSource , state invalid. current state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error : setDataSource , param is invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Ljava/lang/String;IZ)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setDataSource, url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", httpHeader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->m:Ljava/lang/String;

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleSetDataSource originalUrl="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object v0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "taskInfo_get_metadata_play_offset"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetDataSource selfPlayerUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSetDataSource systemPlayerUrl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;)V

    const/16 p1, 0x3e9

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(I)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error : setDataSource , state invalid. current state:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error : setDataSource , param is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLoopback(Z)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setLoopback, isLoopback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public setLoopback(ZJJ)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "setLoopback, isLoopback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", loopStartPositionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", loopEndPositionMs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(ZJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    invoke-virtual {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnAudioProcessFrameOutputListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnAudioProcessFrameOutputListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnCompletionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnCompletionListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnDemuxerListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnDemuxerListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnDemuxerListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnDetailInfoListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnDetailInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnDetailInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnErrorListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnErrorListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnErrorListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnInfoListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnInfoListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnInfoListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnPlayerStateChangeListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnStateChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnStateChangeListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnPreparedListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnPreparedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnPreparedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSeekCompleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSeekCompleteListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnStopAsyncCompleteListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnStopAsyncCompleteListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSubtitleDataListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSubtitleDataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSubtitleDataListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnSubtitleFrameOutListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnSubtitleFrameOutListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnVideoFrameOutListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoFrameOutListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoFrameOutListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnVideoProcessFrameOutputListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoProcessFrameOutputListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Lcom/tencent/thumbplayer/tcmedia/api/ITPPlayerListener$IOnVideoSizeChangedListener;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOutputMute(Z)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setOutputMute, isOutputMute:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setPlaySpeedRatio(F)V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setPlaySpeedRatio, speedRatio:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(F)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->b(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v1, "scene"

    .line 55
    .line 56
    invoke-virtual {v0, v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    const/16 v2, 0x74

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    move-object v1, p0

    .line 70
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public setPlayerOptionalParam(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        c = true
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getParamObject()Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v1, v1, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam$OptionalParamObject;->objectValue:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/j;->a(ILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v2, "set object param failed, optional id:"

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;->getKey()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 52
    .line 53
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V

    .line 54
    .line 55
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPOptionalParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception p1

    .line 63
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public setRichMediaSynchronizer(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;)V
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/richmedia/ITPRichMediaSynchronizer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setSurface, surface:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "setSurfaceHolder, SurfaceHolder:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setVideoInfo(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    .locals 2
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        c = true
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->B:I

    .line 4
    .line 5
    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    .line 6
    .line 7
    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "start"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->i()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "stime"

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    const/16 v2, 0x68

    .line 54
    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    move-object v1, p0

    .line 59
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-interface {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    goto :goto_0

    .line 71
    :catch_1
    move-exception v0

    .line 72
    move-object v1, p0

    .line 73
    :goto_0
    iget-object v2, v1, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public stop()V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        a = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "stop"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public stopAsync()V
    .locals 3
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "stopAsync"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/16 v2, 0x118

    .line 31
    .line 32
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public switchDefinition(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, mediaAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->switchDefinition(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;I)V

    return-void
.end method

.method public switchDefinition(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;I)V
    .locals 6
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, mediaAsset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", videoInfo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    long-to-int p5, v0

    iget v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    invoke-direct {p0, p4, p5, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    move-result-object p4

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSwitchDef, proxyMediaAsset:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p5, p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V

    iget-object p4, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    const/4 p5, 0x0

    invoke-interface {p4, p1, p5, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/composition/ITPMediaAsset;IJ)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string p4, "switch"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x78

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : switchDefinition , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V
    .locals 8
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;I)V

    return-void
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;I)V
    .locals 9
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    invoke-direct {p0, p4, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    move-result-object v7

    new-instance p4, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    invoke-direct {p4, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    const/4 v8, 0x0

    move-object v6, p1

    move-wide v4, p2

    invoke-interface/range {v3 .. v8}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(JLjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object p4

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "switchDefinition selfPlayerUrl="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "switchDefinition systemPlayerUrl="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v6, p1

    move-wide v4, p2

    :goto_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "switchDefinition, proxyUrl:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p1, v7}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p1, p4, p5, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;IJ)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string p2, "switch"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x78

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "error : switchDefinition , state invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;Ljava/util/Map;)V
    .locals 9
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switchDefinition, defUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", defID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", videoInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", httpHeader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;Ljava/util/Map;I)V

    return-void
.end method

.method public switchDefinition(Ljava/lang/String;JLcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;Ljava/util/Map;I)V
    .locals 12
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
        b = true
        c = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 6
    move-object/from16 v5, p5

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "switchDefinition, defUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", defID:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", httpHeader:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p6

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->getCurrentPositionMs()J

    move-result-wide v3

    long-to-int v0, v3

    iget v3, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->C:I

    move-object/from16 v4, p4

    invoke-direct {p0, v4, v0, v3}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;II)Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;

    move-result-object v4

    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    invoke-direct {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    move-object v3, p1

    move-wide v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(JLjava/lang/String;Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;Ljava/util/Map;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;

    move-result-object v0

    iget-object v9, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "switchDefinition selfPlayerUrl="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "switchDefinition systemPlayerUrl="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v9, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "switchDefinition, proxyUrl:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    invoke-interface {p1, v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->b(Lcom/tencent/thumbplayer/tcmedia/api/TPVideoInfo;)V

    move-object v1, v0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    move-object v2, v5

    move v3, v8

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/a;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/e;Ljava/util/Map;IJ)V

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/g;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;-><init>()V

    const-string v0, "switch"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/tencent/thumbplayer/tcmedia/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/g;->a()Ljava/util/Map;

    move-result-object v5

    const/16 v1, 0x78

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->a(IIILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "error : switchDefinition , state invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateLoggerContext(Lcom/tencent/thumbplayer/tcmedia/e/b;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->x:Z

    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 9
    .line 10
    const-string v2, "TPPlayer"

    .line 11
    .line 12
    invoke-direct {v1, p1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/b;-><init>(Lcom/tencent/thumbplayer/tcmedia/e/b;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->b:Lcom/tencent/thumbplayer/tcmedia/adapter/a;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a()Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/b;->a(Lcom/tencent/thumbplayer/tcmedia/e/b;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->c:Lcom/tencent/thumbplayer/tcmedia/tplayer/c;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->u:Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->a()Lcom/tencent/thumbplayer/tcmedia/e/b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/e/b;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/c;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lcom/tencent/thumbplayer/tcmedia/utils/n$b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/tplayer/b;->d:Lcom/tencent/thumbplayer/tcmedia/c/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
