.class Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->startDrawInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "FTXV2LiveRender"

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$800(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/Queue;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    .line 31
    .line 32
    :goto_1
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$900(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Condition;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    const-wide/16 v4, 0x7d0

    .line 43
    .line 44
    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    const-string v1, "render thread is interrupted by set drawing status"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    goto :goto_4

    .line 73
    :catch_0
    move-exception v1

    .line 74
    goto :goto_3

    .line 75
    :cond_0
    if-nez v2, :cond_1

    .line 76
    .line 77
    :try_start_1
    const-string v2, "poll a null frame, please ensure frame provider is working! wait time:2000"

    .line 78
    .line 79
    invoke-static {v0, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$800(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/Queue;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    new-instance v2, Landroid/os/Message;

    .line 97
    .line 98
    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 99
    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    iput v3, v2, Landroid/os/Message;->what:I

    .line 103
    .line 104
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$1100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Landroid/os/Handler;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    .line 115
    :goto_2
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :goto_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "render service is interrupted:"

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :goto_4
    iget-object v1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$2;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    .line 154
    .line 155
    throw v0

    .line 156
    :cond_3
    return-void
.end method
