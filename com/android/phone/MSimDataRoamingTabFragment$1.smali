.class Lcom/android/phone/MSimDataRoamingTabFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimDataRoamingTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSimDataRoamingTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSimDataRoamingTabFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/MSimDataRoamingTabFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/phone/MSimDataRoamingTabFragment$1;->this$0:Lcom/android/phone/MSimDataRoamingTabFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 217
    iget-object v1, p0, Lcom/android/phone/MSimDataRoamingTabFragment$1;->this$0:Lcom/android/phone/MSimDataRoamingTabFragment;

    invoke-static {v1}, Lcom/android/phone/MSimDataRoamingTabFragment;->access$000(Lcom/android/phone/MSimDataRoamingTabFragment;)V

    .line 220
    :cond_11
    return-void
.end method