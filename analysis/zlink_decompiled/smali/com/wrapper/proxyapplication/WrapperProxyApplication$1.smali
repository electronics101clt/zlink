.class Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;
.super Ljava/util/TimerTask;
.source "WrapperProxyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wrapper/proxyapplication/WrapperProxyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wrapper/proxyapplication/WrapperProxyApplication;


# direct methods
.method constructor <init>(Lcom/wrapper/proxyapplication/WrapperProxyApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wrapper/proxyapplication/WrapperProxyApplication;

    .line 60
    iput-object p1, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;->this$0:Lcom/wrapper/proxyapplication/WrapperProxyApplication;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;->this$0:Lcom/wrapper/proxyapplication/WrapperProxyApplication;

    iget-object v0, v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1$1;

    invoke-direct {v1, p0}, Lcom/wrapper/proxyapplication/WrapperProxyApplication$1$1;-><init>(Lcom/wrapper/proxyapplication/WrapperProxyApplication$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method
