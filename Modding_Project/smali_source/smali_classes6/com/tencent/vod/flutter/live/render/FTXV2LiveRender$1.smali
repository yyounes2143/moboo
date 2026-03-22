.class Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;
.super Landroid/os/Handler;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;-><init>(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;


# direct methods
.method public constructor <init>(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "FTXV2LiveRender"

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "un hit handler msg, what:"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p1, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$1000(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$000(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$800(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/Queue;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$900(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Condition;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$700(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/locks/Lock;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_2
    :try_start_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$400(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$500(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/Future;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$500(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Ljava/util/concurrent/Future;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p1

    .line 112
    goto :goto_1

    .line 113
    :catch_1
    move-exception p1

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$300(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "stop render service error:"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :pswitch_3
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$600(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :pswitch_4
    iget-object p1, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$300(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)V

    .line 151
    .line 152
    .line 153
    return-void

    .line 154
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 155
    .line 156
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$000(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_3

    .line 161
    .line 162
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$100(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender$1;->this$0:Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;

    .line 176
    .line 177
    invoke-static {v0, p1}, Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;->access$200(Lcom/tencent/vod/flutter/live/render/FTXV2LiveRender;Lcom/tencent/live2/V2TXLiveDef$V2TXLiveVideoFrame;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    :goto_2
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
