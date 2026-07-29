use std::{
    env,
    io::{BufRead, BufReader},
    os::unix::net::UnixStream,
    process::Command,
};

fn play(file: &str) {
    let _ = Command::new("pw-play")
        .args(["--volume", "0.10", file])
        .spawn();
}

fn main() -> std::io::Result<()> {
    let runtime = env::var("XDG_RUNTIME_DIR")
        .expect("XDG_RUNTIME_DIR não encontrado");
    let instance = env::var("HYPRLAND_INSTANCE_SIGNATURE")
        .expect("HYPRLAND_INSTANCE_SIGNATURE não encontrado");

    let socket_path = format!(
        "{}/hypr/{}/.socket2.sock",
        runtime, instance
    );

    println!("Conectado ao Hyprland!");

    let stream = UnixStream::connect(socket_path)?;
    let reader = BufReader::new(stream);

    for line in reader.lines() {
        let line = line?;

        if line.starts_with("openwindow") {
            play("/home/arconte/.config/hypr/sounds/11041.wav");
        }

        if line.starts_with("closewindow") {
            play("/home/arconte/.config/hypr/sounds/10003.wav");
        }
    }

    Ok(())
}
