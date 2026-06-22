.class Lcom/wrapper/proxyapplication/WrapperProxyApplication$2$1;
.super Ljava/lang/Object;
.source "WrapperProxyApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;


# direct methods
.method constructor <init>(Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;

    .line 88
    iput-object p1, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$2$1;->this$1:Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 92
    sget-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errormsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$2$1;->this$1:Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;

    iget-object v0, v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication$2;->this$0:Lcom/wrapper/proxyapplication/WrapperProxyApplication;

    sget-object v1, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errormsg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/wrapper/proxyapplication/WrapperProxyApplication;->errormsg:Ljava/lang/String;

    .line 98
    return-void
.end method
