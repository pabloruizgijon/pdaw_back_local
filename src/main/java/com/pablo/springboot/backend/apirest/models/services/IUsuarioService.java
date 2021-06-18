package com.pablo.springboot.backend.apirest.models.services;

import com.pablo.springboot.backend.apirest.models.entity.Usuario;

public interface IUsuarioService {

	public Usuario findByUsername(String username);
}
