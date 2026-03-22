.class public Lcom/applovin/impl/r5;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/r5$b;,
        Lcom/applovin/impl/r5$d;,
        Lcom/applovin/impl/r5$c;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final j:Ljava/util/Map;

.field private final k:Ljava/util/List;

.field private final l:Ljava/lang/Object;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/applovin/impl/r5;->o:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/applovin/impl/r5;->j:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/applovin/impl/r5;->k:Ljava/util/List;

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/applovin/impl/r5;->l:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/applovin/impl/r5;->b:Lcom/applovin/impl/sdk/o;

    .line 33
    .line 34
    sget-object v0, Lcom/applovin/impl/l4;->R:Lcom/applovin/impl/l4;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    .line 47
    .line 48
    sget-object v0, Lcom/applovin/impl/l4;->M:Lcom/applovin/impl/l4;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v1, "auxiliary_operations"

    .line 61
    .line 62
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/applovin/impl/r5;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 67
    .line 68
    sget-object v0, Lcom/applovin/impl/l4;->L:Lcom/applovin/impl/l4;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v1, "shared_thread_pool"

    .line 81
    .line 82
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/applovin/impl/r5;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 87
    .line 88
    sget-object v0, Lcom/applovin/impl/l4;->S:Lcom/applovin/impl/l4;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const-string v1, "core"

    .line 101
    .line 102
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/applovin/impl/r5;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 107
    .line 108
    sget-object v0, Lcom/applovin/impl/l4;->T:Lcom/applovin/impl/l4;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    const-string v1, "caching"

    .line 121
    .line 122
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/applovin/impl/r5;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 127
    .line 128
    sget-object v0, Lcom/applovin/impl/l4;->U:Lcom/applovin/impl/l4;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const-string v1, "mediation"

    .line 141
    .line 142
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    iput-object v0, p0, Lcom/applovin/impl/r5;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 147
    .line 148
    sget-object v0, Lcom/applovin/impl/l4;->V:Lcom/applovin/impl/l4;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    const-string v1, "timeout"

    .line 161
    .line 162
    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    iput-object v0, p0, Lcom/applovin/impl/r5;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 167
    .line 168
    sget-object v0, Lcom/applovin/impl/l4;->W:Lcom/applovin/impl/l4;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    const-string v0, "other"

    .line 181
    .line 182
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-object p1, p0, Lcom/applovin/impl/r5;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 187
    .line 188
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/r5$d;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/r5;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/r5$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/r5$d;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 35
    sget-object v0, Lcom/applovin/impl/r5$a;->a:[I

    invoke-static {p1}, Lcom/applovin/impl/r5$d;->a(Lcom/applovin/impl/r5$d;)Lcom/applovin/impl/r5$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/applovin/impl/r5;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/r5;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/r5;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/r5;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/r5;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1
.end method

.method private a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/r5$c;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/r5$c;-><init>(Lcom/applovin/impl/r5;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private a(Lcom/applovin/impl/r5$d;JZ)V
    .locals 3

    .line 30
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5$d;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r5;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p4, :cond_1

    .line 31
    iget-object p4, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    new-instance v1, Lcom/applovin/impl/Ooooooooooo;

    invoke-direct {v1, v0, p1}, Lcom/applovin/impl/Ooooooooooo;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/r5$d;)V

    invoke-static {p2, p3, p4, v1}, Lcom/applovin/impl/c0;->a(JLcom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lcom/applovin/impl/c0;

    return-void

    .line 32
    :cond_1
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 33
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/r5$d;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/r5;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/r5;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/r5$d;)Z
    .locals 3

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/r5$d;->b(Lcom/applovin/impl/r5$d;)Lcom/applovin/impl/w4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/w4;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r5;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/impl/r5;->m:Z

    if-eqz v2, :cond_1

    .line 11
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/r5;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 13
    monitor-exit v0

    return p1

    .line 14
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r5;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r5;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/w4;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 16
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r5;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r5;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 17
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/z6;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Lcom/applovin/impl/r5$d;

    iget-object v2, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/r5$b;->a:Lcom/applovin/impl/r5$b;

    invoke-direct {v1, v2, p1, v3}, Lcom/applovin/impl/r5$d;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/l4;->w:Lcom/applovin/impl/l4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/l4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/w4;->b(Ljava/lang/Thread;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 20
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 22
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/r5;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/w4;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Task failed execution"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :cond_2
    invoke-virtual {p1, v0}, Lcom/applovin/impl/w4;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No task specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/w4;Lcom/applovin/impl/a3;)V
    .locals 3

    .line 25
    invoke-virtual {p2}, Lcom/applovin/impl/a3;->b()Ljava/lang/String;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/r5;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/r5;->a(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/applovin/impl/r5;->j:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    new-instance p2, Lcom/applovin/impl/r5$d;

    iget-object v1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/r5$b;->c:Lcom/applovin/impl/r5$b;

    invoke-direct {p2, v1, p1, v2}, Lcom/applovin/impl/r5$d;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;JZ)V
    .locals 2

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    .line 4
    new-instance v0, Lcom/applovin/impl/r5$d;

    iget-object v1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/r5$d;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/applovin/impl/r5;->b(Lcom/applovin/impl/r5$d;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5$d;JZ)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/r5;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {p1}, Lcom/applovin/impl/w4;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Task execution delayed until after init"

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Invalid delay (millis) specified: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No task specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Runnable;Lcom/applovin/impl/r5$b;)V
    .locals 4

    .line 10
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lcom/applovin/impl/r5$d;

    iget-object v1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/f6;

    const-string v3, "auxiliaryOperation"

    invoke-direct {v2, v1, v3, p1}, Lcom/applovin/impl/f6;-><init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/applovin/impl/r5$d;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5$d;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/r5;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/r5;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/r5;->o:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public b(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/applovin/impl/r5$d;

    iget-object v1, p0, Lcom/applovin/impl/r5;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/r5$d;-><init>(Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/r5$d;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/r5;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/applovin/impl/r5;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/r5;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 9
    .line 10
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/r5;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r5;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/r5;->m:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/applovin/impl/r5;->k:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/applovin/impl/r5$d;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/applovin/impl/r5$d;->b(Lcom/applovin/impl/r5$d;)Lcom/applovin/impl/w4;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2}, Lcom/applovin/impl/r5$d;->a(Lcom/applovin/impl/r5$d;)Lcom/applovin/impl/r5$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, v3, v2}, Lcom/applovin/impl/r5;->a(Lcom/applovin/impl/w4;Lcom/applovin/impl/r5$b;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/r5;->k:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/r5;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/r5;->m:Z

    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw v1
.end method
